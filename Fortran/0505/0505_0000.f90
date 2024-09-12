module m1
type ty
   class(*),pointer::t(:)
end type

 type tty
   character(1)::at(2)
 end type
contains
recursive subroutine foo(x)
 class(*),intent(in)::x
end subroutine

subroutine s1(d)
class(*),intent(in)::d
select type(q=>d)
 type  is(tty)
    call foo(q%at(1))
end select
end
end
print *,'pass'
end
