MODULE m
TYPE t(k)
integer,kind::k=8
COMPLEX(kind=k) ::value=(11,12)
END TYPE
CONTAINS
TYPE(t(4)) FUNCTION int_to_t1(x,mold)
INTEGER x
TYPE(t(4)) mold
int_to_t1%value = x+ mold%value
END FUNCTION
END
USE m
type (t)    ::x1(2)
type (t(4)) ::x2(2)
type (t(8)) ::x3(2)
type (t)    ::x4(2)=t(8)( (1,2) )
type (t(4)) ::x5(2)=t(4)( (3,4) )
type (t(8)) ::x6(2)=t(8)( (5,6) )
type (t(4)) ::r    
do n=1,2
if (x1(n)%k/=8) print *,10001
if (x1(n)%value/=(11,12)) print *,10002
if (x2(n)%k/=4) print *,10011
if (x2(n)%value/=(11,12)) print *,10003
if (x3(n)%k/=8) print *,10031
if (x3(n)%value/=(11,12)) print *,10004
if (x4(n)%k/=8) print *,10041
if (x4(n)%value/=(1,2)) print *,10005
if (x5(n)%k/=4) print *,10061
if (x5(n)%value/=(3,4)) print *,10006
if (x6(n)%k/=8) print *,10071
if (x6(n)%value/=(5,6)) print *,10007
r= int_to_t1(10, x2(n) )
if (abs(r%value - 10 - x2(n)%value ) > 0.0001) print *,20001
r= int_to_t1(10, x5(n) )
if (abs(r%value - 10 - x5(n)%value ) > 0.0001) print *,20002
end do
print *,'pass'
END
