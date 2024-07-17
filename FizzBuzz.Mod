MODULE FizzBuzz;

IMPORT Out;

PROCEDURE Main();
VAR
  i: INTEGER;
BEGIN
  FOR i := 1 TO 99 DO
    IF i MOD 15 = 0 THEN
      Out.String("FizzBuzz")
    ELSIF i MOD 3 = 0 THEN
      Out.String("Fizz")
    ELSIF i MOD 5 = 0 THEN
      Out.String("Buzz")
    ELSE
      Out.Int(i, 0)
    END;
    Out.Ln
  END
END Main;

BEGIN
  Main
END FizzBuzz.
