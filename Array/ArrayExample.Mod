MODULE ArrayExample;

IMPORT Out;

TYPE
  Row = ARRAY 4 OF REAL;

VAR
  x: Row;
  i: INTEGER;

BEGIN
  x[0] := 1.0;
  x[1] := 0.5;
  x[2] := 0.25;
  x[3] := 0.125;

  Out.String("Значения массива x:"); Out.Ln;
  FOR i := 0 TO 3 DO
    Out.String("x["); Out.Int(i, 1); Out.String("] = ");
    Out.Real(x[i], 3); Out.Ln;
  END;
END ArrayExample.
