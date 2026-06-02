subroutine s1()
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name
  end type

  class(z),allocatable::q
 type r
  integer(8)::df(2)
  class(te),allocatable::v,w
 end type
  type (te),allocatable::w
  class(te),allocatable::v1
    allocate(te::w)

    call ss

    allocate(v1)

    k=0
    select type(p=>v1)
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
    end select
    if (k/=1) print *,5255
      if (allocated(w       %name)) print *,3829
      if (.not.same_type_as(q,w       %name)) print *,3828
end
!do n=1,30
call s1()
!end do
     print *,'sngg903s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(8,*) d
  deallocate(d)
end
