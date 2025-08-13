subroutine s1
type y
   integer(8):: y01
   integer,allocatable:: y02(:)
end type
type x1
   integer:: x11
end type
type,extends(x1):: x2
   integer(8):: x21
   type(y):: y2(2)
   integer,allocatable:: x22(:)
end type

class(x1),allocatable:: a(:),b(:)

allocate (x2:: a(3))
a%x11=11
do n=1,size(a)
select type(a)
 type is(x2)
   allocate(a(n)%y2(1)%y02(2),source=1)
   allocate(a(n)%y2(2)%y02(2),source=1)
   allocate(a(n)%x22(2),source=1)
end select
end do

allocate( b, source= a)

do n=1,size(b)
k=0
select type( b)
  type is(x2)
    if (any(b(n)%x22/=1)) write(14,*)201,n
    if (any(b(n)%y2(1)%y02/=1)) write(14,*)211,n
    if (any(b(n)%y2(2)%y02/=1)) write(14,*)221,n
    write(14,'("b%x22 :",z16.16)') n,loc(b(n)%x22)
    write(14,'("b%y2(1)%y02 :",z16.16)') n,loc(b(n)%y2(1)%y02)
    write(14,'("b%y2(2)%y02 :",z16.16)') n,loc(b(n)%y2(2)%y02)
    k=1
  type is(x1)
    k=2
end select
if (k/=1) write(14,*)301,n
end do

do n=1,size(a)
k=0
select type( a)
  type is(x2)
    if (any(a(n)%x22/=1)) write(14,*)202
    if (any(a(n)%y2(1)%y02/=1)) write(14,*)212,n
    if (any(a(n)%y2(2)%y02/=1)) write(14,*)222,n
    write(14,'("a%x22 :",z16.16)') n,loc(a(n)%x22)
    write(14,'("a%y2(1)%y02 :",z16.16)') n,loc(a(n)%y2(1)%y02)
    write(14,'("a%y2(2)%y02 :",z16.16)') n,loc(a(n)%y2(2)%y02)
    deallocate ( a(n)%x22 )
    deallocate(a(n)%y2(1)%y02)
    deallocate(a(n)%y2(2)%y02)
    allocate(a(n)%x22(1),source=2)
    allocate(a(n)%y2(1)%y02(1),source=2)
    allocate(a(n)%y2(2)%y02(2),source=2)
    k=1
  type is(x1)
    k=2
end select
if (k/=1) write(14,*)302
end do

do n=1,size(a)
select type( b)
  type is(x2)
    if (any(b(n)%x22/=1)) write(14,*)"error 203a"
    if (any(b(n)%y2(1)%y02/=1)) write(14,*)"error 213a",n
    if (any(b(n)%y2(2)%y02/=1)) write(14,*)"error 223a",n
    write(14,'("b%x22 :",z16.16)') n, loc(b(n)%x22)
    write(14,'("b%y2(1)%y02 :",z16.16)') n,loc(b(n)%y2(1)%y02)
    write(14,'("b%y2(2)%y02 :",z16.16)') n,loc(b(n)%y2(2)%y02)
    k=1
  type is(x1)
    write(14,*)"Tyep of b is x1"
    k=2
end select
if (k/=1) write(14,*)303
end do
end
call s1
print *,'pass'
end
