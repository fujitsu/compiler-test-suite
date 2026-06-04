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
allocate(ex::e)
e%dd=1
call s1(e)
select type(e)
  type is(ex)
    e%ee=11
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
deallocate(d)
select type(e)
  type is(ex)
    e%ee=21
end select
call s3
if (d%dd/=1) print *,20021
d%dd=-1
k=0
select type(d)
  type is(ex)
    k=1
    if (d%ee/=21) print *,8101
    d%ee=-11
end select
if (k/=1) print *,1105
select type(e)
  type is(ex)
    if (e%ee/=21) print *,7101
end select
select type(e)
  type is(ex)
    e%ee=31
end select
deallocate(e,d)
allocate(d,e)
e%dd=1
call s4
if (d%dd/=1) print *,20022
call s5
end
call s
print *,'sngg813p : pass'
end
