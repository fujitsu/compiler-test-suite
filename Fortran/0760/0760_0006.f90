print *,'pass' 
end

subroutine inline_msg_test1()
integer :: e
common /com/e
!$omp threadprivate(/com/)
call sub_not
call sub
contains
subroutine sub_not
integer :: e
common /com/e
end subroutine
subroutine sub
integer :: e
common /com/e
!$omp threadprivate(/com/)
end subroutine
end

subroutine inline_msg_test2()
integer :: e
common /com/e
call sub_not
call sub
contains
subroutine sub_not
integer :: e
common /com/e
end subroutine
subroutine sub
integer :: e
common /com/e
!$omp threadprivate(/com/)
end subroutine
end
