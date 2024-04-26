module m1
    type zz
       real(8)::x1
    end type
    type,extends(zz):: zz2
       real(8)::x2
    end type
contains
  SUBROUTINE x(k,c)
    class(*),INTENT(OUT):: c(k)
  entry      y(k,c)
   select type(c)
    type is(zz)
     c(1)%x1 = 1
     c(2)%x1 = c(1)%x1
end select
end subroutine
  END
use m1
    type(zz):: c(2)
c=zz(1)
call x(2,c)
if (c(1)%x1/=1) print *,101
if (c(2)%x1/=1) print *,102
c=zz(1)
call y(2,c)
if (c(1)%x1/=1) print *,101
if (c(2)%x1/=1) print *,102
print *,'pass'
end
