MODULE PowerCalculator;

IMPORT Out;

CONST
  MaxN = 100; (* Максимальное значение N *)

PROCEDURE Power(N: INTEGER);
  VAR 
    i, k, r: INTEGER;
    d: ARRAY MaxN OF INTEGER;
BEGIN
  IF N > MaxN THEN N := MaxN END;
  FOR k := 0 TO N-1 DO
    Out.Char("."); r := 0;
    FOR i := 0 TO k-1 DO
      r := 10*r + d[i]; d[i] := r DIV 2; r := r MOD 2;
      Out.Char(CHR(d[i] + ORD("0")))
    END;
    d[k] := 5; Out.Char("5"); Out.Ln
  END
END Power;

BEGIN
  Power(10) (* Пример вызова для первых 10 степеней *)
END PowerCalculator.
