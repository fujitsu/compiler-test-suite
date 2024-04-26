program main
call test1(ians)
if (ians.ne.1) print *,'test1 ng'
call test2(ians)
if (ians.ne.1) print *,'test2 ng'
call test3(ians)
if (ians.ne.1) print *,'test3 ng'
call test4(ians)
if (ians.ne.1) print *,'test4 ng'
call test5(ians)
if (ians.ne.1) print *,'test5 ng'
print *,'test ok'
end
subroutine test1(ians)
character data*8,time*10,zone*5
integer value(8)
ians=1
data='xxxxxxxx'
time='xxxxxxxxxx'
zone='xxxxx'
value=99999    
call date_and_time(data,time,zone,value)
if (data.eq.'xxxxxxxx') iand=0
if (time.eq.'xxxxxxxxx') iand=0
if (zone.eq.'xxxxx') iand=0
if (value(1).eq.99999) iand=0
end subroutine
subroutine test2(ians)
integer from,frompos,len,to,topos
ians=1
from=7
frompos=2
len=2
topos=0
to=6
call mvbits(from,frompos,len,to,topos)
if (to.ne.5) ians=0
end subroutine
subroutine test3(ians)
real x
x=9999.0
ians=1
call random_number(x)
if (x.eq.(9999.0)) ians=0
end subroutine
subroutine test4(ians)
integer size,put(10),get(10)
ians=1
size=1
call random_seed(size=size)
put=10
call random_seed(put=put)
call random_seed(get=get)
if (get(1).ne.10) ians=0
end subroutine
subroutine test5(ians)
integer a1,a2,a3
ians=1
a1=99999
a2=88888
a3=77777
call system_clock(a1,a2,a3)
if (a1.eq.99999) ians=0
if (a2.eq.88888) ians=0
if (a3.eq.77777) ians=0
end subroutine
