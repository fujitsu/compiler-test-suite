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
 type(r)::u(n+1),b(n+1)
  class(t),allocatable::v1,v2
  class (te),allocatable::d1,d2
  type  (te),allocatable::e1,e2
    allocate(te::u(n+1)%w)
    select type(p=>u(n+1)%w)
     type is(te)
       allocate(p       %name)
    end select

    call ss

    allocate(u(n+1)%v, v1, d1, e1, e2,d2,b(n+1)%v, v2, mold=u(n+1)%w)

      if (allocated(e1      %name)) print *,2829
      k=1
      if (.not.same_type_as(q,e1      %name)) print *,2828
      deallocate(e1      %name,stat=m)
      if (m==0) print *,282
    k=0
    select type(p=>d2)
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
      deallocate(p       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>d1)
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
      deallocate(p       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
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
    select type(p=>b(n+1)%v)
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
    k=0
    select type(p=>v2)
     type is(te)
      if (allocated(p       %name)) print *,2829
      k=1
      if (.not.same_type_as(q,p       %name)) print *,2828
      deallocate(p       %name,stat=m)
      if (m==0) print *,282
    end select
    if (k/=1) print *,5255
end
do n=1,30
call s1(1)
end do
     print *,'sngg469s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
