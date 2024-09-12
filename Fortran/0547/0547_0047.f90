module m1
  type x1
     integer:: x1v
  end type
  type ,extends(x1)::x2
     integer::x2v
     class(x1),allocatable::x2a(:)
  end type
  class (*),allocatable:: a(:)
end
subroutine s1
use m1
 
type(x1) :: obj
allocate(x2::a(2))
select type(a)
 class is(x2)
   if(same_type_as(a(1)%x2a,obj)) then
   else
      print *,101
   endif
end select
end
call s1
print *,'pass'
end

