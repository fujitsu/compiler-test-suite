integer a,i
a=0
i=3
go to (10,20,30) i
stop
10 a = a+1
stop 1
20 a = a+2
stop 2
30 a = a+3
if(a.ne.3) print *,'err'
print *,'pass'
stop 3
end
