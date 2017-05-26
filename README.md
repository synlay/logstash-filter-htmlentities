# Logstash Filter HTMLEntities Plugin

[![Travis Build Status](https://travis-ci.org/synlay/logstash-filter-htmlentities.svg)](https://travis-ci.org/synlay/logstash-filter-htmlentities)

This is a plugin for [Logstash](https://github.com/elastic/logstash).

It is fully free and fully open source. The license is MIT, see [LICENSE](http://github.com/synlay/logstash-filter-htmlentities/LICENSE) for further infos.

## Documentation

This filter will decode (X)HTML entities from a given source field and store the result to the target field.

### 1. Configuration

```ruby
filter {
  htmlentities {
    source => "test_source_field"
    target => "test_target_field"
  }
}
```

This configuration will encode the source field `test_source_field` e.q. with data "Examples &amp; Explanations" to "Examples & Explanations" and store the result to the field `test_target_field`.

## Developing

For further instructions on howto develop on logstash plugins, please see the documentation of the official [logstash-filter-example](https://github.com/logstash-plugins/logstash-filter-example#developing).
