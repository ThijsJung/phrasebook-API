Request
GET /api/v1/phrases?language=$language

The language argument is mandatory.

Example
GET /api/v1/phrases?language=pl-PL


Response
Returns a list of phrase objects for that language.

```json
[
    {
        "id": "phrase_id_1",
        "language": "pl-PL",
        "phrase": "Jak tam?",
        "nl-NL": [
            {
                "id": "translation_id_1",
                "text": "Hoe gaat het?",
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
    ...
}
```

Request

POST /api/v1/phrases
Body
```json
[
    {
        "id": "phrase_id_1"
    },
    {
        "id": "phrase_id_2",
        "language": "nl-NL"
    }
]
```

Response
```json
[
    {
        "id": "phrase_id_1",
        "language": "pl-PL",
        "phrase": "Jak tam?",
        "nl-NL": [
            {
                "id": "translation_id_1",
                "text": "Hoe gaat het?",
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
    "language": "pl-PL",
    "phrase": "Idzie dobrze",
    "nl-NL": [
        {
            "id": "translation_id_3",
            "text": "Het gaat goed",
            "audio": "<url-to-recording.mp3>"
        }
    ]
}