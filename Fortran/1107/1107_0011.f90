subroutine s1(n)
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
 type(r)::u(n+1)
  class(te),allocatable::w
  class(t),allocatable::v1
    allocate(te::w)
    select type(p=>w)
     type is(te)
       allocate(p       %name)
    end select

    call ss

    allocate(u(n+1)%v, v1, mold=w)

    k=0
    select type(p=>u(n+1)%v)
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
      deallocate(p       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v1)
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
      deallocate(p       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
end
!do n=1,30
call s1(1)
!end do
     print *,'sngg898s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
