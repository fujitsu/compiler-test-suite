print *,'pass' 
end

subroutine inline_msg_test1()
integer :: e
common /com/e
!$omp threadprivate(/com/)
call sub_not
call sub
end

subroutine inline_msg_test2()
integer :: e
common /com/e
!$omp threadprivate(/com/)
call sub_not
call sub
end

subroutine sub_not
integer :: e
common /com/e
!$omp threadprivate(/com/)
end
subroutine sub
integer :: e
common /com/e
!$omp threadprivate(/com/)
end
