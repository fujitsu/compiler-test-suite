subroutine s1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::na(:)
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name(:)
  end type

  class(z),allocatable::q
  class(t),allocatable::v(:),w(:)
    allocate(te::w(2))
    select type(w)
     type is(te)
       allocate(w(1)%name(2))
       allocate(w(2)%name(2))
    end select

    call ss

    allocate(   v,mold=w)

    k=0
    select type(v)
     type is(te)
      if (allocated(v(1)%name)) print *,2829
      if (allocated(v(1)%na)) print *,2829
      k=1
      if (.not.same_type_as(q,v(1)%name)) print *,2828
      if (.not.same_type_as(q,v(1)%na)) print *,2828
      deallocate(v(1)%na,stat=n)
      if (n==0) print *,282
      deallocate(v(1)%name,stat=n)
      if (n==0) print *,282
      if (allocated(v(2)%name)) print *,2829
      if (allocated(v(2)%na)) print *,2829
      if (.not.same_type_as(q,v(2)%name)) print *,2828
      if (.not.same_type_as(q,v(2)%na)) print *,2828
      deallocate(v(2)%na,stat=n)
      if (n==0) print *,282
      deallocate(v(2)%name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
end
call s1()
     print *,'sngg543s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
