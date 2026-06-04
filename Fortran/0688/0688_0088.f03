type t
integer::i
end type
class(t),allocatable::ttt
allocate(ttt)
!$omp parallel 
call sub(ttt)
!$omp end parallel 
print *,'pass'
contains
subroutine sub(x)
class(t),intent(out)::x
!$omp parallel 
do concurrent(i=1:1)
!$omp atomic read
x%i=i
enddo
!$omp end parallel 
end subroutine
end
