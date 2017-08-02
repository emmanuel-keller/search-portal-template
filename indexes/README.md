One index will be created for each JSON file in this directory.

## Index definition

```
{
  "fields": {
    "{field-name}": {
        "type": "{field-type}",
        "fulltext": "{fulltext-analyzer}",
        "stored": boolean,
        "sort": boolean,
        "facet": boolean,
        "copy_from": [ field-name-array ] 
    }
  },
  "queries": {
    "{query-name": {
      "returned": [ field-name-array ],
      "snippets": {
        "{snippet-name}": {
          "field": "{field-name}",
          "pre_tag": "{characters}",
          "post_tag": "{characters}",
          "multivalued_separator": "{characters}",
          "ellipsis": "{characters}",
          "max_passages": {integer},
          "max_length": {integer},
          "break_iterator": {
            "type": "sentence",
            "language": "en-US"
          }
        }
      },
      "facets": {
        "{facet-name}": {
          "top": {top-value}
        }
      }
    }
  }
}
```

### Field types:

- TEXT
- LONG
- INTEGER
- DOUBLE
- FLOAT

### Full-text analyzers

- LOWERCASE
- ASCII
- ARABIC
- BULGARIAN
- CJK
- CZECH
- DANISH
- DUTCH
- GERMAN
- GREEK
- ENGLISH
- SPANISH
- FINNISH
- IRISH
- HINDI
- HUNGARIAN
- ITALIAN
- LITHUANIAN
- LATVIAN
- NORWEGIAN
- PORTUGUESE
- ROMANIAN
- RUSSIAN
- SWEDISH
- TURKISH