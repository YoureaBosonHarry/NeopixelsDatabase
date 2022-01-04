CREATE TABLE patterns_schema.pattern_list
(
	pattern_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1),
	pattern_uuid UUID NOT NULL,
	pattern_name TEXT NOT NULL,
	date_added TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
	PRIMARY KEY (pattern_id),
	UNIQUE (pattern_uuid),
        UNIQUE (pattern_name)
)