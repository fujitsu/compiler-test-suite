subroutine s1
type x1
   integer:: x11
end type
type,extends(x1):: x2
   integer:: x21
   integer,allocatable:: x22(:)
end type

class(x1),allocatable:: a(:),b(:)

allocate (x2:: a(3))
a%x11=11
do n=1,size(a)
select type(a)
 type is(x2)
   allocate(a(n)%x22(2),source=1)
end select
end do

b=  a

do n=1,size(b)
k=0
select type( b)
  type is(x2)
    write(13,*)"Tyep of b is x2"
    if (any(b(n)%x22/=1)) write(13,*)201,n
    write(13,'("b%x22 :",z16.16)') n,loc(b(n)%x22)
    k=1
  type is(x1)
    write(13,*)"Tyep of b is x1"
    k=2
end select
if (k/=1) write(13,*)301,n
end do

do n=1,size(a)
k=0
select type( a)
  type is(x2)
    write(13,*)"Tyep of a is x2"
    if (any(a(n)%x22/=1)) write(13,*)202
    write(13,'("a%x22 :",z16.16)') n,loc(a(n)%x22)
    deallocate ( a(n)%x22 )
    allocate(a(n)%x22(1),source=2)
    k=1
  type is(x1)
    write(13,*)"Tyep of a is x1"
    k=2
end select
if (k/=1) write(13,*)302
end do

do n=1,size(a)
select type( b)
  type is(x2)
    write(13,*)"Tyep of b is x2"
    if (any(b(n)%x22/=1)) write(13,*)"error 203a"
    write(13,'("b%x22 :",z16.16)') n, loc(b(n)%x22)
    k=1
  type is(x1)
    write(13,*)"Tyep of b is x1"
    k=2
end select
if (k/=1) write(13,*)303
end do
end
call s1
print *,'pass'
end
