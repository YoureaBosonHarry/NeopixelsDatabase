CREATE OR REPLACE FUNCTION patterns_schema.delete_pattern
(
  _pattern_uuid UUID
)
RETURNS VOID
LANGUAGE plpgsql AS 
$$
BEGIN
  DELETE FROM patterns_schema.pattern_generation CASCADE WHERE pattern_uuid = _pattern_uuid;
  DELETE FROM patterns_schema.pattern_list CASCADE WHERE pattern_uuid = _pattern_uuid;
END
$$;