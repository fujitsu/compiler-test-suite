 module m1
  type:: z
    integer(8)::x1
  end type
  type,abstract::x0
    private
  end type
  type,extends(x0):: x
    integer(8)::x1
    class(z),pointer::p 
  end type
  contains
  logical function f(a,b)
   type (x),intent(in)::a
   type (x),intent(in)::b
    class(z),pointer::tmp_a,tmp_b
    tmp_a=> a%p
    tmp_b=> b%p
    select type (tmp_a)
      type is(z)
        select type (tmp_b)
          type is(z)
           f=associated(a%p, b%p)
        end select
     end select
  end function
end
subroutine s1
use m1
type(x),target::a,b
logical::y
allocate(b%p)
a%p=> b%p
y=f(a,b)
if (.not.y) print *,10003
end
call s1
print *,'pass'
end