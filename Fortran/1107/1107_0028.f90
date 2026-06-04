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
  class(te),allocatable::w
  class(*),allocatable::v1(:),v3(:),v5(:)
  class(te),allocatable::v2(:),v4(:),v6(:)
    allocate(te::w)
    select type(p=>w)
     type is(te)
       allocate(p       %name)
    end select

    call ss

    allocate(v1(3),v2(3),v3(3),v4(3),v5(3),v6(3), mold=w)

    k=0
    select type(p=>v1(3))
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v2(3))
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v3(3))
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v4(3))
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v5(3))
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v6(3))
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
    end select
    if (k/=1) print *,5255
end
do n=1,30
call s1()
end do
     print *,'sngg915s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(20,*) d
  deallocate(d)
end
