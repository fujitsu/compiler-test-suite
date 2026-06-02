print *,'pass' 
end

module mod
integer ii
end 

subroutine inline_msg_test1()
use mod
common /com/e
!$omp threadprivate(/com/)
call s1()
call s2()
call s3()
call s4()
end

subroutine inline_msg_test2()
use mod
integer :: e
common e
call s1()
call s2()
call s3()
call s4()
end

subroutine inline_msg_test3()
integer :: e
common e
call s1()
call s2()
call s3()
call s4()
end

subroutine inline_msg_test4()
call s1()
call s2()
call s3()
call s4()
end

subroutine inline_msg_test5()
use mod
call s1()
call s2()
call s3()
call s4()
end

subroutine s1()
integer :: e
common e
end
subroutine s2()
integer :: e
common /com/ e
!$omp threadprivate(/com/)
end
subroutine s3()
end
subroutine s4()
integer :: e
common /com/ e
!$omp threadprivate(/com/)
end
