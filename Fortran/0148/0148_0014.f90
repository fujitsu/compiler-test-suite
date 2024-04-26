module m1
contains
  SUBROUTINE x(k,c)
    CHARACTER(1),INTENT(out):: c(:)
     c(1) = '1'
     c(2) = c(1)
end subroutine
  END
use m1
    CHARACTER(1):: c(2)
call x(2,c)
if (any(c/='1')) print *,101
print *,'pass'
end
