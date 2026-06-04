module m
character,parameter::a='9'
character,parameter::b='0'
character::k1
contains

subroutine s
!$omp declare reduction (aa:character:omp_out=a) &
!$omp initializer(omp_priv=b)
!$omp parallel sections reduction(aa:k1)
k1=max(k1,'2')
!$omp section
k1=max(k1,'3')
!$omp section
k1=max(k1,'4')
!$omp end parallel sections
if (k1=='9') then
  print *,'pass'
else
  print *,"ng",k1
endif
end subroutine
end module

use m
call s
end
