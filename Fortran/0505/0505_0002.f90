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
recursive subroutine foo(k1,x,k2)
 class(*),intent(in)::x
 integer,intent(in)::k1,k2
end subroutine

subroutine s1(d)
class(*),intent(in)::d
select type(q=>d)
 type  is(tty)
    call foo(1,q%key(),2)
end select
end
end
print *,'pass'
end
