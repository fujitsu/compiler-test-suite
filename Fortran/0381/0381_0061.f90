module m
 type, private:: x
    integer,public::x1=1
    integer,private::x2=2
 end type
 type (x),save::v
 contains
   subroutine s1
     if (v%x1/=1)print *,11
     if (v%x2/=2)print *,12
   end subroutine
end
use m
call s1
print *,'pass'
end
