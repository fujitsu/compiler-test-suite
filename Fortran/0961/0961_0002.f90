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

select type(bb=>obj%k+i) 
type is(integer)
 do bb = 1,10
 end do
print*,Arr
end select

END

function pls(a,b)
 class(*),intent(in) :: a
 integer,intent(in)  :: b

 class(*),pointer ::pls

 allocate(integer::pls)

 select type(p=>pls)
 type is(integer)
  select type(asc=>a)
  type is(integer)
   p = asc+b
  end select
 end select
end function
