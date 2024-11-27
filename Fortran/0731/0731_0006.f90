call test01()
call test02()
print *,'pass'
end


module mod01
integer i
character(len=5) j
integer k
contains
subroutine t01()
i=1
j='12345'
k=2
end subroutine
end
subroutine test01()
use mod01
call t01()
if (i.ne.1) write(6,*) "NG"
if (j.ne.'12345') write(6,*) "NG"
if (k.ne.2) write(6,*) "NG"
end subroutine


subroutine test02()
end subroutine
