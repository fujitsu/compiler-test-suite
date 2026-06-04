subroutine s1
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
     class(z),allocatable::n
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name
  end type

  class(z),allocatable::q
  class(t),allocatable::v,w
    allocate(te::w)
    select type(w)
     type is(te)
       allocate(w%name)
       allocate(w%n)
    end select

    call ss

    allocate(   v,mold=w)

    k=0
    select type(v)
     type is(te)
      if (allocated(v%name)) print *,2829
      if (allocated(v%n)) print *,28291
      k=1
      if (.not.same_type_as(q,v%name)) print *,2828
      if (.not.same_type_as(q,v%n)) print *,28281
      deallocate(v%name,stat=n)
      if (n==0) print *,282
      deallocate(v%n,stat=n)
      if (n==0) print *,2821
    end select
    if (k/=1) print *,5255
end
call s1()
     print *,'sngg458s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
