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
  class(* ),allocatable::v(:)
  type (te),allocatable::w(:)
 end type
 type(r)::u(n+1),b(n+1)
  class(*),allocatable::v1(:),v2(:)
  class (* ),allocatable::d1(:),d2(:)
  type  (te),allocatable::e1(:),e2(:)
    allocate(te::u(n+1)%w(2))
       allocate(u(n+1)%w(2)    %name)

    call ss

    allocate(u(n+1)%v(2), v1(2), d1(2), e1(2), e2(2),d2(2),b(n+1)%v(2), v2(2), mold=u(n+1)%w)

      if (allocated(e1(2)      %name)) print *,2829
      k=1
      if (.not.same_type_as(q,e1(2)      %name)) print *,2828
      deallocate(e1(2)      %name,stat=m)
      if (m==0) print *,282
    k=0
    select type(p=>d2)
     type is(te)
      if (allocated(p(2)       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p(2)    %name)) print *,2828
      deallocate(p(2)       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>d1)
     type is(te)
      if (allocated(p(2)       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p(2)       %name)) print *,2828
      deallocate(p(2)       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>u(n+1)%v)
     type is(te)
      if (allocated(p(2)       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p(2)       %name)) print *,2828
      deallocate(p(2)       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>b(n+1)%v)
     type is(te)
      if (allocated(p(2)       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p(2)   %name)) print *,2828
      deallocate(p(2)       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v1)
     type is(te)
      if (allocated(p(2)       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p(2)       %name)) print *,2828
      deallocate(p(2)       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>v2)
     type is(te)
      if (allocated(p(2)       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p(2)       %name)) print *,2828
      deallocate(p(2)       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
end
do n=1,30
call s1(1)
end do
     print *,'sngg533s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
