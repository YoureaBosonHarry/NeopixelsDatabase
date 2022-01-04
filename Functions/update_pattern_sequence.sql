CREATE OR REPLACE FUNCTION patterns_schema.update_pattern_sequence
(
  _pattern_uuid UUID,
  _sequence_number INTEGER,
  _sequence_description TEXT
)
RETURNS VOID
LANGUAGE plpgsql AS 
$$
BEGIN
  UPDATE patterns_schema.pattern_generation SET sequence_description = _sequence_description WHERE pattern_uuid = _pattern_uuid AND sequence_number = _sequence_number;
END
$$;