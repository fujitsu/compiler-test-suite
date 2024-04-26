MODULE m
TYPE t(k)
integer,kind::k=8
COMPLEX(kind=k) ::value=(11,12)
END TYPE
CONTAINS
TYPE(t(4)) FUNCTION int_to_t1(x,mold)
INTEGER x
TYPE(t(4)) mold
int_to_t1%value = x
END FUNCTION
END
PROGRAM example
USE m
type (t)    ::x1
type (t(4)) ::x2
type (t(8)) ::x3
type (t)    ::x4=t(8)( (1,2) )
type (t(4)) ::x5=t(4)( (3,4) )
type (t(8)) ::x6=t(8)( (5,6) )
if (x1%k/=8) print *,10001
if (x1%value/=(11,12)) print *,10002
if (x2%k/=4) print *,10011
if (x2%value/=(11,12)) print *,10003
if (x3%k/=8) print *,10031
if (x3%value/=(11,12)) print *,10004
if (x4%k/=8) print *,10041
if (x4%value/=(1,2)) print *,10005
if (x5%k/=4) print *,10061
if (x5%value/=(3,4)) print *,10006
if (x6%k/=8) print *,10071
if (x6%value/=(5,6)) print *,10007
print *,'pass'
END
