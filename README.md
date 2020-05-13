POST /api/v1/card

Request
{
    "entity_id": "<some random ID>",
    "representations": [
        {
            "type": "text",
            "language": "PL"
        },
        {
            "type": "text",
            "language": "EN"
        }
    ]
}

Response

[
    {
        "title": "The christmas tree",
        "description": "It has a lot of lights!"
    },
    {
        "title": "El arbol de Navidad",
        "description": "Cuantas luces tiene!"
    }
}
]

POST /api/v1/deck

Request
[
{card requests
}, ...
]

Response
[
{card responses
}, ...
]



POST /api/v1/card

Request
[
"entity_id_1",
"entity_id_2"
]

Response

[{
    "entity_id": 1,
    "representations": [
        {
            "type": "text",
            "language": "en-US",
            "content": {
                "title": "The christmas tree",
                "description": "It has a lot of lights!"
            }
        },
        {
            "type": "text",
            "language": "es-ES",
            "content": {
                "title": "El arbol de Navidad",
                "description": "Cuantas luces tiene!"
            }
        },
        {
            "type": "image",
            "content": {
                "url": "https://s3-eu-west-1.amazonaws.com/hungarian.phrasebook/images/christmas-tree-gettyimages-1072744106.jpg"
            }
        }
    ]
},
{
    "entity_id": 2,
    "representations": [
        {
            "type": "text",
            "language": "nl-NL",
            "content": {
                "title": "Goeiemorgen",
                "description": "Een begroeting die gebruikt wordt in de ochtend, tot 12:00."
            }
        },
        {
            "type": "text",
            "language": "en-US",
            "content": {
                "title": "Good morning",
                "description": "A greeting used in the morning, until 12:00."
            }
        },
        {
            "type": "text",
            "language": "es-ES",
            "content": {
                "title": "Buenos dias",
                "description": "Un saludo que se usa por las mañanas, pero tambien durante el dia."
            }
        },
        {
            "type": "audio",
            "content": {
                "url": "https://s3-eu-west-1.amazonaws.com/hungarian.phrasebook/recordings/Goeiemorgen+-+04%3A04%3A2020%2C+13.56.mp3"
            }
        }
    ]
}

]