program ShtoIPishu;
var
  n, i, j: integer;   
  wins, draws, losses: array[1..10] of integer; 
  moreWinsThanLosses: integer; 
  BolshePolovin: boolean; 
begin
  moreWinsThanLosses := 0;
  BolshePolovin:= false; 

  writeln('Введите количество команд (от 2 до 10): ');
  read(n);
  if (n<2) or (n>10) then
  begin
    writeln('Количество команд должно быть от 2 до 10');
    exit;
  end;

  writeln('Введите данные о победах, ничьих и поражениях:');
  for i := 1 to n do
  begin
    writeln('Команда ', i);

    readln(wins[i], draws[i], losses[i]);

    if wins[i] > losses[i] then
      moreWinsThanLosses := moreWinsThanLosses + 1;

    if wins[i] > draws[i] + losses[i] then
      BolshePolovin := true;
  end;
  
  writeln('Количество команд с больше победами, чем поражениями: ', moreWinsThanLosses);
  
  writeln('Команды без поражений: ');
  for i := 1 to n do
  begin
    if losses[i] = 0 then
      write(i, ' '); 
  end;
  
  writeln; 

  if BolshePolovin then
    writeln('Существует команда, выигравшая более половины игр.')
  else
    writeln('Нет команд, выигравших более половины игр.');
end.