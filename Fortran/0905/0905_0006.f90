integer :: arr(3)
call sub(arr,4)        
        contains
        impure elemental subroutine sub(x,n)
        integer,intent(in) :: n
        integer, intent(in) :: x
        integer :: y
        !$omp parallel
        y = 2 * x
        !$omp endparallel
        end subroutine
        end
