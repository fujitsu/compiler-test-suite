MODULE m
TYPE t(k)
integer,kind::k=8
COMPLEX(kind=k) ::value=(11,12)
END TYPE
type (t)    ::x4(2)/t(8)( (1,2)) , t(8)( (1,2))/
END
subroutine s1
USE m
if (x4(1)%value/=(1,2)) print *,10005
if (x4(2)%value/=(1,2)) print *,10006
end
call s1
print *,'pass'
END
