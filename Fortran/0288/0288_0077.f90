call s
print *,'pass'
end
subroutine s
integer a,b,c,d
b=1
c=2
d=3
a = b
go to 10
b = c
10 c = d
if(a.ne.1) print *,'err1'
if(c.ne.3) print *,'err2'
end
