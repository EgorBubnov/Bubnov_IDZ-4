# Bubnov_IDZ-4
1 вариант 

задание 4b:
Входные данные:
•	n: количество команд (2 ≤ n ≤ 10). (integer)
•	Массивы wins, draws, losses для каждой команды, где:
o	wins[i]: количество побед команды i. (integer)
o	draws[i]: количество ничьих команды i. (integer)
o	losses[i]: количество поражений команды i. (integer)
Выходные данные:
•	moreWinsThanLosses Количество команд, у которых больше побед, чем поражений. (boolean)
•	nolose Номера команд, прошедших чемпионат без поражений. (integer)
•	BolshePolovin  Информация о наличии команды, выигравшей более половины игр. (integer)
Связи
nolose[i] := (losses[i] = 0)

if wins[i] > losses[i] then moreWinsThanLosses := moreWinsThanLosses + 1;

if wins[i] > (wins[i] + draws[i] + losses[i]) / 2 then BolshePolovin := true;




задание 4а:
Входные данные:
X – real
Выходные данные:
Sum – real
Связи
∑i∞=1 = ((2i)!+abs(x))/(i^2)!
