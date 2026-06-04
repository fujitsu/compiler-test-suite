module m
integer,parameter::a=1
integer,parameter::b=1
contains
Subroutine s
!$omp declare reduction (aa:integer:omp_out=omp_out+omp_in+a+b) &
!$omp initializer(omp_priv=a+b)
integer::c=0
integer::i
call omp_set_num_threads(2)
!$omp parallel do reduction(aa:c)
do i=1,10
c=c+1
end do
!$omp end parallel do
if(c==18) then
print *,"pass"
else
print *,"ng",c
endif
end subroutine
end module

use m
call s
end
