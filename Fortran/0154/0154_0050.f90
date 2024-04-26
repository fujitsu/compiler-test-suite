MODULE m
TYPE t(k)
integer,kind::k
COMPLEX(kind=k) ::value
END TYPE
type (t(8))    ::x1
END
subroutine s1
USE m
do n=1,2
end do
end
call s1
print *,'pass'
END
