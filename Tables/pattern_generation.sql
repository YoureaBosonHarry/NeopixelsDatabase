CREATE TABLE patterns_schema.pattern_generation
(
	pattern_generation_id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1),
	pattern_uuid UUID NOT NULL,
	pattern_name TEXT NOT NULL,
        sequence_number INTEGER NOT NULL,
        sequence_description TEXT NOT NULL,
        date_added TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
        pattern_metadata JSON,
	PRIMARY KEY (pattern_generation_id),
    CONSTRAINT fk_patternuuid_patternlist FOREIGN KEY (pattern_uuid) REFERENCES patterns_schema.pattern_list(pattern_uuid),
	CONSTRAINT fk_patternname_patternlist FOREIGN KEY (pattern_name) REFERENCES patterns_schema.pattern_list(pattern_name)
)