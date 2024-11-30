program Pomogite;



var
  x, E: Real;
  sum, term: Real;
  i: Integer;

function Factorial(n: Integer): Integer;
var
  j: Integer;
begin
  Result := 1;
  for j := 2 to n do
    Result := Result * j;
end;

//function DoubleFactorial(n: Integer): Integer;
//var
  //j: Integer;
//begin
  //Result := 1;
  //for j := 1 to n do
    //if j mod 2 = 0 then
      //Result := Result * j;
//end;

begin
  Write('Введите вещественное число x: ');
  ReadLn(x);
  Write('Введите точность E (0 < E << 1): ');
  ReadLn(E);

  sum := 0;
  i := 1;
  repeat
    term := (Factorial(2 * i) + Abs(x)) / Factorial(i * i);
    sum := sum + term;
    i := i + 1;
  until (term < E);

  WriteLn('Результат суммы: ', sum);
end.