module m
complex,external :: f1
end module
complex function f1() result(ii)
use m,only:f2=>f1
complex::jj=0
!$omp atomic capture
jj%re=ii%re
ii%re=f2()
!$omp end atomic
end function
use m
print *,'pass'
end
