subroutine s1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type tt
     integer(8)::du
     class(z),allocatable::name
  end type
  type t
     integer(8)::du
     type(tt):: y
     class(z),allocatable::name
  end type

  class(t),allocatable::v,w
  class(z),allocatable::q
    allocate(w)
    allocate(   v,mold=w)
    if (.not.same_type_as(q,v%name)) print *,2828
    deallocate(v%name,stat=n)
    if (n==0) print *,282
    if (.not.same_type_as(q,v%y%name)) print *,3828
    deallocate(v%y%name,stat=n)
    if (n==0) print *,382
end
call s1()
     print *,'sngg136t : pass'
     end
