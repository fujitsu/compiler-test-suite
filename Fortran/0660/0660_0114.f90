program main
call test01
call test02
call test03
print *,'pass'
end


subroutine test01()
integer a(10,10),b(10,10)
a=1
pure:forall (i=1:10,j=1:10,.true.)
 a(i,j)=j+i
end forall pure
forall:DO j=1,10
DO i=1,10
 b(i,j)=j+i
 if (a(i,j).ne.b(i,j)) print *,"fail" 
end do 
end do forall
end subroutine

subroutine test02()
ifun(i)=j+i
i=10
j=0
forall (i=1:10)
  j=ifun(i)
end forall 
end subroutine

subroutine test03()
type ty1
  integer a(10)
end type
type (ty1) :: str(10)
integer b(10)
b=(/1,2,3,4,5,6,7,8,9,10/)
do i=1,10
 str(i)%a=b
end do
k=10
forall (i=k-9:10:k-9,j=int(1):k+0,.true.)
 jj=str(i)%a(j) 
 jj=ifun(str(i)%a(j),b(j)) 
end forall 
contains
 pure function ifun(j,i)
 integer,intent(in) :: j,i
 ifun=1
 end function
end subroutine
