call test01()
print *,'pass'
end

module mod1
contains
 recursive subroutine sub2(ext)
 external ext
 call sub3(ext,sub1)
 end subroutine
 recursive subroutine sub1(a)
 integer a(10)
 if (a(1).eq.0) call sub2(sub1)
 a=(/1,2,3,4,5,6,7,8,9,10/)
 end subroutine
 recursive subroutine sub3(ext1,ext2)
 external ext1,ext2
 integer a(10),b(10)
 a=11
 b=12
 call ext1(a)
 call ext2(b)
 end subroutine
end 

subroutine test01()
use mod1
integer arr(10)
arr=0
call sub1(arr)
end subroutine
