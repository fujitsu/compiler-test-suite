program main
call test01()
call test02()
print *,'pass'
end 

module mod1
contains
 pure function ifun04(j,i)
 integer,intent(in) :: j,i
 ifun04=j+i
 return 
 entry ifun05(j,i)
 ifun05=j+i
 end function
end module

subroutine test01()
use mod1
interface ifun
 pure function ifun03(j,i)
 integer,intent(in) :: j,i
 end function
end interface
interface 
 pure subroutine errtra
 end subroutine
end interface
ifun02(j,i)=j+i
j0=0;j1=0;j2=0;j3=0;j4=0;j5=0
forall:forall (i=1:10,.true.)
  j1=ifun01(j1,i)
  j2=ifun02(j2,i)
  j3=ifun03(j3,i)
  j0=ifun(j0,i)
  j4=ifun04(j4,i)
  j5=ifun05(j5,i)
end forall forall
contains
 pure function ifun01(j,i)
 integer,intent(in) :: j,i
 ifun01=j+i
 end function
end subroutine
 pure function ifun03(j,i)
 integer,intent(in) :: j,i
 ifun03=j+i
 end function

subroutine test02()
i=ifunc(1,1)
end subroutine

pure recursive function ifunc(j,i)
use mod1
integer,intent(in) :: j,i
interface ifun
 pure function ifun03(j,i)
 integer,intent(in) :: j,i
 end function
end interface
interface ifun4
 module procedure ifun04
end interface
interface ifun5
 module procedure ifun05
end interface
interface 
 pure subroutine errtra
 end subroutine
end interface
ifun02(j,i)=j+i
ifunc=1
j0=0;j1=0;j2=0;j3=0;j4=0;j5=0
forall:forall (i=1:10,.true.)
  j1=ifun01(j1,i)
  j2=ifun02(j2,i)
  j3=ifun03(j3,i)
  j0=ifun(j0,i)
  j4=ifun4(j4,i)
  j5=ifun5(j5,i)
end forall forall
contains
 pure function ifun01(j,i)
 integer,intent(in) :: j,i
 ifun01=j+i
 end function
end function
