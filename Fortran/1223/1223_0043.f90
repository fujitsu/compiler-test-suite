 subroutine s1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type tt
     integer(8)::du
     class(z),allocatable::name
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::du
     type(tt),allocatable:: y(:,:)
     class(z),allocatable::name
  end type

  class(t),allocatable::v(:),w(:)
  class(z),allocatable::q
    allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
    if (.not.same_type_as(q,v(m)%name)) print *,2828
    deallocate(v(m)%name,stat=n)
    if (n==0) print *,282
    if (allocated(v(m)%y)) print *,3828
  end do
 end select
 if (k/=1) print *,292
end
call s(1000)
call s1()
     print *,'sngg139t : pass'
     end
subroutine s(n)
integer,allocatable::x(:)
allocate(x(n))
x=-1
write(1,*) x
end
