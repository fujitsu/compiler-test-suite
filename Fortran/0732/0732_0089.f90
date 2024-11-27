 module m1
 integer,parameter ::K=6
 real(8) ::POP(k,k)
 integer ::N
  contains
    subroutine ss1
      POP=reshape((/(i,i=1,k*k)/),(/k,k/))
      N=k
    end subroutine
    subroutine ss2
      POP(1:N,1:N) = POP(1:N,1:N) + TRANSPOSE( POP(1:N,1:N) )
    end subroutine
subroutine chk
 if (any(abs(pop-reshape((/2,9,16,23,30,37,9,16,23,30,37,44,16,23,30,37,44,51,23,30,37,44,51,58,30,37,44,51,58,65,37,44,51,58,65,72/),(/6,6/)))>0.0001))write(6,*) "NG"
end subroutine
 end module
use m1
call ss1
call ss2
call chk
print *,'pass'
end
