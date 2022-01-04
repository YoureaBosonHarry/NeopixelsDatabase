CREATE OR REPLACE FUNCTION patterns_schema.get_pattern_generation 
(
  _pattern_uuid UUID
)
RETURNS TABLE (PatternUUID UUID, PatternName TEXT,SequenceNumber INTEGER, SequenceDescription TEXT, DateAdded TIMESTAMP WITH TIME ZONE, Metadata JSON)
LANGUAGE plpgsql
AS
$$
BEGIN
	RETURN QUERY
		SELECT pattern_uuid, pattern_name, sequence_number, sequence_description, dateadded, metadata FROM patterns_schema.pattern_generation WHERE pattern_uuid = _pattern_uuid;
END;
$$;