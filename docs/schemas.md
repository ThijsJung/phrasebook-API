# Schemas

Phrases

| field name | data type | Description | Comment |
| --- | --- | --- | --- |
| id | String | Identifier for the phrase/term | |
| language | String | An IETF BCP 47 language tag | E.g. "en-US" for American English|
| phrase | String | The phrase that will be translated | |
| translations | Object | | If there is no translation for a given language, there will be no key for this language in the `translations` object. There will always be at least one translation for a phrase.|
| translations.$language | Array | A list of translations for the phrase in the given language | The array will contain one or more translations and will never empty.|
| images | Array | A list of URLs with images for the phrase | If there are no images, there will be no `images` key.|
| audio | Object | | If there is no audio for a given language, there will be no key for this language in the `audio` object. If there is no audio at all for this phrase, there will be no `audio` key.|
| audio.$language | Array | A list of URLs to MP3 files containing the spoken version of a translation| |

```json
{
    "id": "3f38cfaf-a0bb-4b4d-86c0-b104d581d207",
    "language": "nl-NL",
    "phrase": "Hoe gaat het?",
    "translations": {
        "pl-PL": ["Jak tam?"]
    },
    "audio": {
        "pl-PL": ["www.recordyourself.com/jak-tam"]
    }
}
```

```json
{
    "id": "3f38cfaf-a0bb-4b4d-86c0-b104d581d207",
    "language": "nl-NL",
    "phrase": "Hoe gaat het?",
    "pl-PL": [
        {
            "text": "Jak tam?",
            "audio": "www.recordyourself.com/jak-tam"
        }
    ],
    "en-US": [
        {
            "text": "How are you?"
        },
        {
            "text": "What's up?",
            "audio": "www.recordyourself.com/wazzup"
        }
    ]
}
```

Terms 