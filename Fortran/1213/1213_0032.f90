subroutine s1
  type z
    integer(8)::z1
  end type
  type r
     integer(8)::rx
     class(z),allocatable::n2
     class(z),allocatable::n3
  end type
  type y
    integer(8)::y1
    type(r)::yv(2)
  end type
  type t
     integer(8)::du
  end type
  type ,extends(t)::te
     integer(8)::dx
     type(y)::u(2,3)
     type(z),allocatable::name
  end type

  class(z),allocatable::q
  class(t),allocatable::v,w
    allocate(te::w)
    select type(w)
     type is(te)
       allocate(w%name)
       allocate(w%u(2,3)%yv(2)%n2)
       allocate(w%u(1,1)%yv(1)%n3)
    end select

    call ss

    allocate(   v,mold=w)

    k=0
    select type(v)
     type is(te)
      if (allocated(v%name)) print *,2829
      k=1
      if (.not.same_type_as(q,v%name)) print *,2828
      deallocate(v%name,stat=n)
      if (n==0) print *,282
      if (allocated(v%u(2,3)%yv(2)%n2)) print *,5829
      if (.not.same_type_as(q,v%u(2,3)%yv(2)%n2)) print *,5828
      deallocate(v%u(2,3)%yv(2)%n2,stat=n)
      if (n==0) print *,582
      if (allocated(v%u(1,1)%yv(1)%n3)) print *,6829
      if (.not.same_type_as(q,v%u(1,1)%yv(1)%n3)) print *,6828
      deallocate(v%u(1,1)%yv(1)%n3,stat=n)
      if (n==0) print *,682
    end select
    if (k/=1) print *,5255
end
call s1()
     print *,'sngg390s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
