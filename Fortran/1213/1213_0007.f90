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

  type(t)::v,vv
  type(e)::w
  class(e),allocatable::ww


    w%z1=11
    allocate(w%e1)
    allocate(w%e2)

  allocate(ww)
    ww%z1=11
    allocate(ww%e1)
    allocate(ww%e2)

    allocate(   v%name)
       if (w%z1/=11) print *,3828

    allocate(   vv%name)
       if (ww%z1/=11) print *,38287

   deallocate(v%name,w%e1)

    w%z1=11
    allocate(w%e1)
    allocate(   v%name,mold=w)
       if (w%z1/=11) print *,38285
   deallocate(v%name)
   !deallocate(w%e1)

end
call s1()
     print *,'sngg365s : pass'
     end
