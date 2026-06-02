call test01()
call test02()
call test03()
print *,'pass'
end

function c_fun(i) result(ccc)
character(i) :: ccc
ccc="1234567890"
end function
subroutine test01()
interface
function c_fun(i) result(ccc)
character(i) :: ccc
end function
end interface
!$omp parallel default(private)
if (sizeof(c_fun(10)) .ne.10 ) print *,"fail"
if (sizeof(c_fun(11)) .ne.11 ) print *,"fail"
if (sizeof(c_fun(0)) .ne.0 ) print *,"fail"
if (sizeof(c_fun(1000)) .ne.1000 ) print *,"fail"
!$omp end parallel
end

subroutine test02()
if (sizeof(c_fun(10)) .ne.100 ) print *,"fail"
if (sizeof(c_fun(11)) .ne.121 ) print *,"fail"
if (sizeof(c_fun(0)) .ne.0 ) print *,"fail"
contains
function c_fun(i) result(ccc)
character(i) :: ccc(i)
ccc="1234567890"
end function
end

subroutine test03()
if (sizeof(c_fun(10)) .ne.132 ) print *,"fail"
if (sizeof(c_fun(11)) .ne.156 ) print *,"fail"
if (sizeof(c_fun(0)) .ne.2 ) print *,"fail"
contains
function c_fun(i) result(ccc)
character(i+1) :: ccc(i+2)
ccc="1234567890"
end function

end

