module m
integer,external :: f1
end module
integer function f1() result(ii)
use m,only:f2=>f1
integer::jj=0
!$omp atomic capture
jj=ii
ii=f2()
!$omp end atomic
end function
print *,'pass'
end
