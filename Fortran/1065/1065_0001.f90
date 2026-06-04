module m
contains
subroutine s
implicit none
integer::a=1
!$omp declare reduction (aa:integer:omp_out=omp_out+omp_in+abs(-10)) &
!$omp initializer(omp_priv=0)
integer::i
call omp_set_num_threads(2)
!$omp parallel do reduction(aa:a)
do i=1,10
a=a+1
end do
!$omp end parallel do
if(a==31) then
   print *,"pass"
else
   print *,a 
endif
end subroutine
end module 

use m
call s
end
