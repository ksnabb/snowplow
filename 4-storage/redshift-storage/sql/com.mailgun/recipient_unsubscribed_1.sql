-- AUTO-GENERATED BY schema-ddl DO NOT EDIT
-- Generator: schema-ddl 0.3.1
-- Generated: 2016-07-02 06:16

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_mailgun_recipient_unsubscribed_1 (
    "schema_vendor"  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"    VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"  VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version" VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"        CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"    TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"       VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"       VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"     VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "body_plain"     VARCHAR(4096) ENCODE LZO,
    "city"           VARCHAR(4096) ENCODE LZO,
    "client_name"    VARCHAR(4096) ENCODE LZO,
    "client_os"      VARCHAR(4096) ENCODE LZO,
    "client_type"    VARCHAR(4096) ENCODE LZO,
    "country"        VARCHAR(4096) ENCODE LZO,
    "device_type"    VARCHAR(4096) ENCODE LZO,
    "domain"         VARCHAR(4096) ENCODE LZO,
    "event"          VARCHAR(4096) ENCODE LZO,
    "ip"             VARCHAR(15)   ENCODE LZO,
    "my_var_2"       VARCHAR(4096) ENCODE LZO,
    "my_var_1"       VARCHAR(4096) ENCODE LZO,
    "recipient"      VARCHAR(4096) ENCODE LZO,
    "region"         VARCHAR(4096) ENCODE LZO,
    "signature"      VARCHAR(4096) ENCODE LZO,
    "tag"            VARCHAR(4096) ENCODE LZO,
    "timestamp"      VARCHAR(4096) ENCODE LZO,
    "token"          VARCHAR(4096) ENCODE LZO,
    "user_agent"     VARCHAR(4096) ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_mailgun_recipient_unsubscribed_1 IS 'iglu:com.mailgun/recipient_unsubscribed/jsonschema/1-0-0';
