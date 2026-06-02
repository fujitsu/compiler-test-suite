module m1
  type:: ty
     integer(8) :: dd
  end type
  type,extends(ty)::ex
     integer,allocatable::ee
  end type
    class(ty), allocatable :: d
    class(ty),allocatable :: e
    class(ty),pointer     :: p
contains
  subroutine s1 (object)
    class(ty) :: object
    select type (y =>object )
      type is(ty)
        !object= e
    end select
  end subroutine
  subroutine s2 
    select type (y =>d )
      type is(ty)
        d= e
    end select
  end subroutine
  subroutine s3 
    select type (y =>d )
      type is(ty)
        allocate(d,source=e) 
    end select
  end subroutine
  subroutine s4 
    select type (y =>d )
      type is(ty)
        y= e
    end select
  end subroutine
  subroutine s5 
    select type (y =>d )
      type is(ty)
        !allocate(y) 
    end select
  end subroutine
end 
subroutine s
use m1
allocate(e)
e%dd=1
call s1(e)
call s2
if (d%dd/=1) print *,20001
deallocate(d)
call s3
if (d%dd/=1) print *,20021
d%dd=-1
call s4
if (d%dd/=1) print *,20022
call s5
end
call s
print *,'sngg812p : pass'
end
