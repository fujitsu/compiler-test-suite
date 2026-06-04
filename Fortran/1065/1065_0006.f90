module m
complex,parameter::a=(10.0,5.0)
complex,parameter::b=(1.0,2.0)
complex c
contains
subroutine s
!$omp declare reduction (aa:complex:omp_out=a) &
!$omp initializer(omp_priv=b)
integer::i
call omp_set_num_threads(2)
!$omp parallel do reduction(aa:c)
do i=1,10
c=a+b
end do
!$omp end parallel do
if(c==(10.0,5.0)) then
print *,"pass"
else
print *,"ng",a
endif
end subroutine
end module

use m
call s
end
