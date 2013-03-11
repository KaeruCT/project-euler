program main;

function isPrime (n : longint): Boolean;
var
    d, s : longint;
begin
    s := trunc(sqrt(n)) + 1;
    isPrime := true;

    for d := 2 to s do
    begin
        if (n mod d = 0) then
        begin
            isPrime := false;
            break;
        end;
    end;
end;

var
    sum : ptruint;
    i, max : longint;
begin
    sum := 5;
    i := 5;
    max := 2000000;

    while (i < max) do
    begin
        if (isPrime(i)) then
            sum := sum + i;

        i := i + 2;
    end;

    writeln(sum);
end.
