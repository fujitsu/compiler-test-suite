subroutine foo01(a,n)
integer:: a(n)

write(1,*) (a(k),k=1,n)
end

subroutine foo02(a,b,c,n1,n2)
integer:: a(n1,n2),b(n1,n2),c(n1,n2)
 call sub(a,b,c)
contains
subroutine sub(a,b,c)
integer,dimension(*):: a,b,c
end subroutine
end

subroutine foo03(n)
integer,pointer:: p(:)
integer,target::t(3)/1,2,3/
if (n==3) then
 p=> t(:)
else
 p=>t(::2)
endif
call sub(p,n)
contains
subroutine sub(a,n)
integer a(n)
write(2,*)a
end subroutine
end

subroutine foo04
type x
  integer:: x1
end type
complex :: c
type(x):: z
z%x1=1
c=(1,2)
end

subroutine foo06(p)
integer,contiguous,pointer:: p(:,:)
p(1,1) =1
call sub(p)
contains
subroutine sub(a)
integer a(*)
end subroutine
end

subroutine foo07
type x
 integer,pointer:: p
end type
type(x):: v
allocate(v%p)
v%p = 1
end

subroutine foo08
interface
 function af() result(r)
  integer r(2)
end function
end interface
integer::a(2)
a= af()
end
 function af() result(r)
  integer r(2)
  r=[1,2]
end function

integer ::a(5)/1,2,3,4,5/
parameter(n1=3,n2=4)
integer:: a2(n1,n2),b2(n1,n2),c2(n1,n2)
interface 
subroutine foo06(p)
integer,contiguous,pointer:: p(:,:)
end subroutine
end interface 
integer,contiguous,pointer:: p(:,:)

call foo01(a,5)

a2=1;b2=1;c2=1
call foo02(a2,b2,c2,n1,n2)

call foo03(3)

call foo04

allocate(p(2,3))
call foo06(p)

call foo07

call foo08

print *,'pass'
end
