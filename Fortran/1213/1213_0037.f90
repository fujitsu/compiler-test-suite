module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type t
     integer(8)::du
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name
  end type
contains
subroutine s1()
  type (te)::qx
     class(z),allocatable::r
      if (allocated(qx%name)) print *,28291
      if (.not.same_type_as(r,qx%name)) print *,28281
      deallocate(qx%name,stat=n)
      if (n==0) print *,282
end
end
use m1
  call ss
call s1()
     print *,'sngg395s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
