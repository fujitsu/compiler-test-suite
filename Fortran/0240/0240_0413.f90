call s
print *,'pass'
end
subroutine s
integer a,b,c,d
a=1
b=2
c=0
d=0
if (a > b) then
c = d
else if (a < b) then
d = c
else
stop
end if
end
