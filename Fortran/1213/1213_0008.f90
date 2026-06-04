subroutine s1
  type y
    integer(8)::z2
  end type
  type,extends(y)::ye
     integer(8),allocatable::e3
 end type

  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
     class(y)  ,allocatable::e2
 end type
  type t
     integer(8)::du
     class(z),allocatable::name
  end type

  type(t)::v
  type(e)::w

    w%z1=11
    allocate(w%e1)
    call ss
    allocate(   v%name,mold=w)
       if (w%z1/=11) print *,38285
   select type(p=>v%name)
     type is(e)
       if (allocated(p%e1)) print *,5001
       if (allocated(p%e2)) print *,5002
    end select
    deallocate(v%name)
end
call s1()
     print *,'sngg366s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
