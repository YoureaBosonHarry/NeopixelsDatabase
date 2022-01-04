CREATE OR REPLACE FUNCTION patterns_schema.get_pattern_list ()
RETURNS TABLE (PatternUUID UUID, PatternName TEXT, DateAdded TIMESTAMP WITH TIME ZONE)
LANGUAGE plpgsql
AS
$$
BEGIN
	RETURN QUERY
		SELECT pattern_uuid, pattern_name, dateadded FROM patterns_schema.pattern_list;
END;
$$;