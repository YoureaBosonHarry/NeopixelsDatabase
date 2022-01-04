CREATE OR REPLACE FUNCTION patterns_schema.add_pattern_sequence
(
  _pattern_uuid UUID,
  _pattern_name TEXT,
  _sequence_number INTEGER,
  _sequence_description TEXT,
  _pattern_metadata JSON
)
RETURNS VOID
LANGUAGE plpgsql AS 
$$
BEGIN
  INSERT INTO patterns_schema.pattern_generation(pattern_uuid, pattern_name, sequence_number, sequence_description, pattern_metadata) VALUES (_pattern_uuid, _pattern_name, _sequence_number, _sequence_description, _pattern_metadata);
END
$$;