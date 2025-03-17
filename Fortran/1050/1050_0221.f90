!
!
!

integer, dimension(2,4) :: a
a=5
call sub(a)
print *,"pass"
contains
  subroutine sub(d)
    integer, pointer, dimension(:,:) :: c
    integer, target, dimension(2,4) :: d
    c => d
    c(2,2) = 10
    !$omp parallel
    !$omp task
    if (c(2,2)/=10) then
       print *,"NG c(2,2)=",c(2,2)
    endif
    c(1,1) = 20
    !$omp end task
    !$omp end parallel
  end subroutine sub
end
