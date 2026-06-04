module m
integer,parameter::b=100
integer::a=0
contains
subroutine s
!$omp declare reduction (aa:integer:omp_out=omp_out+omp_in) &
!$omp initializer(omp_priv=b)
integer::i
call omp_set_num_threads(2)
!$omp parallel do reduction(aa:a)
do i=1,10
a=a+1
end do
!$omp end parallel do
if(a==210) then
print *,"pass"
else
print *,"ng",a
endif
end subroutine
end module

use m
call s
end
