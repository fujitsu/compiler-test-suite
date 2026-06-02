module m1
  type:: ty
     integer(8) :: dd
  end type
  type,extends(ty)::ex
     integer,allocatable::ee
  end type
    class(ty), allocatable :: d
    class(ty),allocatable :: e
contains
  subroutine s2 
    select type (y =>d )
      type is(ty)
        d= e
    end select
  end subroutine
end 
subroutine s
use m1
allocate(ex::e)
e%dd=1
select type(e)
  type is(ex)
    allocate(e%ee,source=11)
end select
call s2
if (d%dd/=1) print *,20001
k=0
select type(d)
  type is(ex)
    k=1
    if (d%ee/=11) print *,8001
    d%ee=-11
end select
if (k/=1) print *,1005
select type(e)
  type is(ex)
    if (e%ee/=11) print *,7001
end select
deallocate(e,d)
end
call s
print *,'sngg814p : pass'
end
