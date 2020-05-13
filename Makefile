TEAM=flashcards
PROJECT=flashcards-backend
BUILD_BUCKET=$(FLASHCARDS_BUILD_BUCKET)

ifndef ENV
	ENV=development
	OWNER=$(USER)
	STACK_NAME_SUFFIX=$(USER)
else
	OWNER=$(TEAM)
	STACK_NAME_SUFFIX=$(ENV)
endif

STACK_NAME=flashcards-backend-$(STACK_NAME_SUFFIX)

build:
	mkdir -p _build
	pip install -r requirements.txt --target _build --upgrade

package:
	aws cloudformation package \
		--template-file cloudformation/flashcards.yaml \
		--s3-bucket $(BUILD_BUCKET) \
		--s3-prefix deployments \
		--output-template-file _build/packaged-cloudformation-template.yaml

deploy:
	aws cloudformation deploy \
		--template-file _build/packaged-cloudformation-template.yaml \
		--stack-name $(STACK_NAME) \
		--capabilities CAPABILITY_IAM \
		--parameter-overrides Environment=$(ENV) StackName=$(STACK_NAME) \
		--tags Team=$(TEAM) Project=$(PROJECT) Owner=$(OWNER) Environment=$(ENV)