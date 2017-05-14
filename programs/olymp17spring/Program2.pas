program zadanie2;  
var n,counter,h1,h2,h3:integer;
var t:array[1..101]of integer;
var h:array[1..100] of integer;
begin
readln(n);

for counter:=1 to n do read(t[counter]);
h1:=1;  
h2:=0; 

for counter:=1 to n do
if t[counter]>0 then h2:=h2+1 else
begin
h[h1]:=h2;
h2:=0;
h1:=h1+1;
end;

h3:=h[1];
for counter:=1 to h1 do if h[counter]>h3 then h3:=h[counter];

writeln(h3);
end.
