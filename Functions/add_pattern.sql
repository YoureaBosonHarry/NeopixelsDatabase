CREATE OR REPLACE FUNCTION patterns_schema.add_pattern
(
  _pattern_uuid UUID,
  _pattern_name VARCHAR
)
RETURNS VOID
LANGUAGE plpgsql AS 
$$
BEGIN
  INSERT INTO patterns_schema.pattern_list(pattern_uuid, pattern_name) VALUES (_pattern_uuid, _pattern_name);
END
$$;