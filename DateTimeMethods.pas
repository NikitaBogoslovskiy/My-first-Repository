unit DateTimeMethods;

function IsLeapYear(year: integer): boolean;
begin
  Result:=(year mod 4 = 0);
end;

function DaysInMonth(month, year: integer): integer;
begin
  case month of
    1,3,5,7,8,10,12:Result:=31;
    4,6,9,11:Result:=30;
  end;
  if month=2 then
    if IsLeapYear(year) then
      Result:=29
    else
      Result:=28;
end;

function LaterInDay(p1, p2: DateTime): DateTime;
begin
  Result:=p1>p2?p1:p2;
end;

function LaterInYear(p1, p2: DateTime): DateTime := p1;
function DaysInYear(year: integer): integer := 0;
function DaysInYearRange(year1, year2: integer): integer := 0;
function SecondsInHours(hours: integer): integer := 0;

begin

end.
