subroutine s1(m)
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(*),allocatable::name
  end type

  class(z),allocatable::q
  class(*),allocatable::v
 type y
     integer(8)::dx
  class(*),allocatable::v
 end type
 type(y)::va(m),vb(m)
  class(*),allocatable::w
    allocate(te::w)
    select type(w)
     type is(te)
       allocate(z::w%name)
    end select

    call ss

    allocate(   va(m)%v,v,vb(m)%v,mold=w)

    k=0
    select type(v)
     type is(te)
      if (allocated(v%name)) print *,2829
      k=1
      if (same_type_as(q,v%name)) print *,2828
      deallocate(v%name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>va(m)%v)
     type is(te)
      if (allocated(p%name)) print *,2829
      k=1
      if (same_type_as(q,p      %name)) print *,2828
      deallocate(p      %name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
    k=0
    select type(p=>vb(m)%v)
     type is(te)
      if (allocated(p%name)) print *,2829
      k=1
      if (same_type_as(q,p      %name)) print *,2828
      deallocate(p      %name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
end
call s1(2)
     print *,'sngg554s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
