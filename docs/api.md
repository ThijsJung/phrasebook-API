

## Get all phrases
### Request
`'GET /api/v1/phrases?language=$language'`

The language argument is mandatory.

Example
GET /api/v1/phrases?language=pl-PL


### Response
Returns a list of phrase objects for that language.

```json
[
    {
        "id": "phrase_id_1",
        "language": "nl-NL",
        "phrase": "Hoe gaat het?",
        "pl-PL": [
            {
                "id": "translation_id_1",
                "text": "Jak tam?",
                "audio": "<url-to-recording.mp3>"
            }
        ],
        "en-US": [
            {
                "id": "translation_id_2",
                "text": "How are you?"
            }
        ]
    },
    // More phrases if available
]
```

## Get all or specific translations for a given phrase
### Request
`POST /api/v1/phrases`

Body
```json
[
    {
        "id": "phrase_id_1"
    },
    {
        "id": "phrase_id_2",
        "language": "pl-PL"
    }
]
```

### Response
```json
[
    {
        "id": "phrase_id_1",
        "language": "nl-NL",
        "phrase": "Hoe gaat het?",
        "pl-PL": [
            {
                "id": "translation_id_1",
                "text": "Jak tam?",
                "audio": "<url-to-recording.mp3>"
            }
        ],
        "en-US": [
            {
                "id": "translation_id_2",
                "text": "How are you?"
            }
        ]
    },
    {
    "id": "phrase_id_2",
    "language": "nl-NL",
    "phrase": "Het gaat goed",
    "pl-PL": [
        {
            "id": "translation_id_3",
            "text": "Idzie dobrze",
            "audio": "<url-to-recording.mp3>"
        }
    ]
}