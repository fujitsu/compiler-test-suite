integer:: a=1,b=2
call sub(a,b)
print*,'pass'
end

subroutine sub(a,b)
interface
  pure integer function fun1()
  end function
  pure integer function fun2(a,b)
  integer,intent(in):: a,b
  end function
end interface
integer:: a,b
integer:: c( fun1(),fun2(a,b) )

c=reshape((/1,2,3,4,5,6/),(/2,3/))

if(ubound(c,1) /= 2) print*,'ng1'
if(ubound(c,2) /= 3) print*,'ng2'
k=0
do j=1,3; do i=1,2
  k=k+1
  if(c(i,j) /= k) print*,c(i,j),k
enddo;enddo
end subroutine

pure integer function fun1()
fun1=2
end function
pure integer function fun2(a,b)
integer,intent(in):: a,b
fun2=a+b
end function
