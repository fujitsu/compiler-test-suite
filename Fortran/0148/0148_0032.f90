module m1
   type z
     integer::z1
   end type
end
  SUBROUTINE x(k,c)
use m1
    type(z)     ,INTENT(out):: c(k)
  END
use m1
    type(z)     :: c(2)
call x(2,c)
print *,'pass'
end
