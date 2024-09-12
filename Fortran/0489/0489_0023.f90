subroutine s1
type x1
   integer:: x11
end type
type,extends(x1):: x2
   integer:: x21
   integer,allocatable:: x22(:)
end type

class(x1),allocatable:: a,b

allocate (x2:: a)
a%x11=11
select type(a)
 type is(x2)
   allocate(a%x22(2),source=1)
end select

b=  a

k=0
select type( b)
  type is(x2)
    write(1,*)"Tyep of b is x2"
    if (any(b%x22/=1)) write(1,*)201
    write(1,'("b%x22 :",z16.16)') loc(b%x22)
    k=1
  type is(x1)
    write(1,*)"Tyep of b is x1"
    k=2
end select
if (k/=1) write(1,*)301
k=0
select type( a)
  type is(x2)
    write(1,*)"Tyep of a is x2"
    if (any(a%x22/=1)) write(1,*)202
    write(1,'("a%x22 :",z16.16)') loc(a%x22)
    deallocate ( a%x22 )
    allocate(a%x22(1),source=2)
    k=1
  type is(x1)
    write(1,*)"Tyep of a is x1"
    k=2
end select
if (k/=1) write(1,*)302
select type( b)
  type is(x2)
    write(1,*)"Tyep of b is x2"
    if (any(b%x22/=1)) write(1,*)"error 203a"
    write(1,'("b%x22 :",z16.16)') loc(b%x22)
    k=1
  type is(x1)
    write(1,*)"Tyep of b is x1"
    k=2
end select
if (k/=1) write(1,*)303
end
call s1
print *,'pass'
end
