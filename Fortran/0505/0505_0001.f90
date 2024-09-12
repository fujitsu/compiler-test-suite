module m1

 type tty
   integer:: x
   contains
    procedure::key
 end type
contains
 function key(this)
     character(:), pointer :: key
     class(tty), intent(in) :: this

     allocate(character::key)
  end function key
recursive subroutine foo(x)
 class(*),intent(in)::x
end subroutine

subroutine s1(d)
class(*),intent(in)::d
select type(q=>d)
 type  is(tty)
    call foo(q%key())
end select
end
end
print *,'pass'
end
