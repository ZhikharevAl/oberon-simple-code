MODULE FamilyCounter;

IMPORT Out;

TYPE
  Person = RECORD
    male: BOOLEAN;
    birthdate: RECORD
      year: INTEGER
    END
  END;

VAR
  count: INTEGER;
  family: ARRAY 100 OF Person;  (* Предполагаем максимальный размер массива 100 *)
  N: INTEGER;  (* Фактический размер массива *)

PROCEDURE CountYoungFemales*;
VAR
  i: INTEGER;
BEGIN
  count := 0;
  FOR i := 0 TO N-1 DO
    IF ~family[i].male & (family[i].birthdate.year > 2000) THEN
      INC(count)
    END
  END;
  Out.String("Количество женщин, родившихся после 2000 года: ");
  Out.Int(count, 0);
  Out.Ln
END CountYoungFemales;

BEGIN
  (* Здесь можно инициализировать массив family и установить N *)
  N := 0;  (* Инициализируем N *)
END FamilyCounter.
