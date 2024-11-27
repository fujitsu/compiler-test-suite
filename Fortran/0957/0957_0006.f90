module m1
interface operator(+)
module procedure :: add
end interface

contains
function add(a,b)
class(*),intent(in)::a
class(*),intent(in)::b
class(*),allocatable::add

select type(aa=>a)
 class default
  print*, 911

 type is(character(len=*))
  select type(bb=>b)
   class default
    print*, 912

   type is(character(len=*))
    allocate(character(len=4)::add)
    select type(cc=>add)
     class default
      print*, 913

     type is(character(len=*))
      cc = aa // bb
    end select
  end select
end select
print*,"PASS"
end
end

use m1
select type(aa=>fun(add))
 class default
  print*, 914

 type is(character(len=*))
  if(aa /= "AABB") print*,101
end select

contains
function fun(d1)
procedure(add)::d1
class(*),allocatable::fun

character(len=2)::ch1="AA"
character(len=2)::ch2="BB"

select type(aa=>d1(ch1,ch2))
 class default
  print*, 915

 type is (character(len=*))
  if(aa /= "AABB") print*,201
  allocate(character(len=4)::fun)
  select type(bb=>fun)
   class default
    print*,916

   type is(character(len=*))
    bb = aa
  end select
end select
end
end
