subroutine s1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type t
     integer(8)::du
     class(z),allocatable::name
  end type

  type(t),allocatable::v,w
  class(z),allocatable::q
    allocate(w)
    allocate(e::w%name)
    allocate(   v,mold=w)
    if (.not.same_type_as(q,v%name)) print *,2828
    deallocate(v%name,stat=n)
    if (n==0) print *,282
end
call s1()
     print *,'sngg367s : pass'
     end
