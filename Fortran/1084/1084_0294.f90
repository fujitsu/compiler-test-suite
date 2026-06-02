implicit none

interface operator(+)
function pls(a,b)
 class(*),intent(in) :: a
 integer,intent(in)  :: b

 class(*),pointer ::pls
end function
end interface

INTEGER :: i,Arr(20)
type ty
  integer::num=1
  class(*),allocatable :: k
end type

type(ty) :: obj

allocate(integer::obj%k)

Arr = 20

i = 1
select type(bb1=>obj%k)
type is(integer)
   bb1 =0 
end select
select type(bb1=>obj%k+i) 
type is(integer)
if(bb1.ne.1)print*,"101"
select type(bb=>obj%k+i+ bb1) 
type is(integer)
 if(bb.ne.2)print*,"102"
 if(any(Arr.ne.20))print*,"103"
end select
end select
print*,"PASS"
END

function pls(a,b)
 class(*),intent(in) :: a
 integer,intent(in)  :: b
 class(*),pointer ::pls
 allocate(integer::pls)

 select type(p=>pls)
 type is(integer)
 select type(p=>pls)
 type is(integer)
  select type(asc=>a)
  type is(integer)
   p = asc+b
  end select
  end select
 end select
end function
