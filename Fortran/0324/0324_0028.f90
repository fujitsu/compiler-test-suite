call test01()
call test02()
print *,'pass'
end

subroutine test01()
integer a(10,10),b(10,10),c(10,10)
 a=1
 b=5
 c=0
 do j=1,10
   do k=1,10
     do i=1,10
       c(i,j)=c(i,j)+a(i,k)*b(k,j)
     enddo
   enddo
 enddo
do ii=1,10
if (any(c(ii,:).ne.50)) print *,'err01'
end do
 a=1
 b=5
 c=0
call isub(a,b,c)
do ii=1,10
if (any(c(ii,:).ne.50)) print *,'err02'
end do
 a=1
 b=5
 c=0
call i2sub()
do ii=1,10
if (any(c(ii,:).ne.50)) print *,'err03'
end do
 a=1
 b=5
 c=0
call sub(a,b,c)
do ii=1,10
if (any(c(ii,:).ne.50)) print *,'err04'
end do
contains
subroutine isub(a,b,c)
integer a(10,10),b(10,10),c(10,10)
 do j=1,10
   do k=1,10
     do i=1,10
       c(i,j)=c(i,j)+a(i,k)*b(k,j)
     enddo
   enddo
 enddo
end subroutine
subroutine i2sub()
 do j=1,10
   do k=1,10
     do i=1,10
       c(i,j)=c(i,j)+a(i,k)*b(k,j)
     enddo
   enddo
 enddo
end subroutine
end subroutine
subroutine sub(a,b,c)
integer a(10,10),b(10,10),c(10,10)
 do j=1,10
   do k=1,10
     do i=1,10
       c(i,j)=c(i,j)+a(i,k)*b(k,j)
     enddo
   enddo
 enddo
end subroutine

subroutine test02()
integer i
real a(10)
real b(10)
b=(/1,2,3,4,5,6,7,8,9,10/)
do i=1,10
  a(i) = b(i)
enddo
a(2)=111
if (any(a.ne.(/1,111,3,4,5,6,7,8,9,10/))) print *,'err'
end
