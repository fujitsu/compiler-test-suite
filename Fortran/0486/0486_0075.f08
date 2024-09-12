Module m1
  contains
    integer function f()
      f=1
    end function
    subroutine foo( d )
    integer,external :: d
      if (d() /= 1) print *,201
    end subroutine
end
subroutine s1
use m1
procedure( f ),pointer:: p
p=> f
if (p()/=1) print *,201
call foo( f )
call foo( p )
end
call s1
print *,'pass'
end
