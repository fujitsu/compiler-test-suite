call test01()
call test02()
call test03()
print *,'pass'
end

module mod
contains
function ifun(i)
integer,intent(in) :: i
ifun=i
end function
end

subroutine test01()
use mod
integer a(10),b(10)
a=(/1,2,3,4,5,6,7,8,9,10/)
i=100
b=101
forall (i=2:9)
  where(a.eq.i) b=i
end forall
do j=2,9
 if (b(j).ne.j) write(6,*) "NG"
end do
 if (b(1).ne.101) write(6,*) "NG"
 if (b(10).ne.101) write(6,*) "NG"
if (i.ne.100) write(6,*) "NG"
end subroutine

subroutine test02()
use mod
integer a(10),b(10)
a=(/1,2,3,4,5,6,7,8,9,10/)
i=100
b=101
forall (i=2:9)
  where(a.eq.i) 
      b=i
  end where
end forall
do j=2,9
 if (b(j).ne.j) write(6,*) "NG"
end do
 if (b(1).ne.101) write(6,*) "NG"
 if (b(10).ne.101) write(6,*) "NG"
if (i.ne.100) write(6,*) "NG"
end subroutine

subroutine test03()
use mod
integer a(10),b(10)
a=(/1,2,3,4,5,6,7,8,9,10/)
i=100
b=101
forall (i=2:9)
  where(a.eq.i) 
      b=i
  else where
      b=1
  end where
end forall
do j=2,9
 if (b(j).ne.1) write(6,*) "NG"
end do
 if (b(1).ne.1) write(6,*) "NG"
 if (b(10).ne.1) write(6,*) "NG"
if (i.ne.100) write(6,*) "NG"
end subroutine
