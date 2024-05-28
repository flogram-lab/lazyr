# Lazyr

Filtered message streams from Wayout

### Build

        $ docker-compose build

### CLI

Create mashup with all sources mixed into one with applied filter by one of three keywords:

        $ id="aggregated and filtered source test"
        $ lazyr mashup --add $id
        $ lazyr mashup --add --keywords --contains $id keyword1 keyword2
        $ lazyr mashup --add --sources $id *
        $ lazyr mashup --url $id

Mashups are generated at the time of request (like, by URL) receiving streams from **flo_rss** RPC. No caching.

List active mashups

        $ lazyr mashup

Alternatively, specific sources can be added and manipulated in a mashup (example code has no filtering rules)

        $ id="aggregated source test"
        $ lazyr mashup --add $id
        $ lazyr mashup --set --sources $id 1111 2222
        $ lazyr mashup --url $id

To list available sources, **wayout-cli** should be used.

Remove mashup

        $ lazyr mashup --rm $id

A mashup can take mashup as a source:

        $ included_id="aggregated source test"
        $ final_id="aggregated and filtered source test"

        $ lazyr mashup --set --mashups $final_id $included_id

NOTE: Chaining mashups will trigger multiple mashup generation (lazyr has no caching)