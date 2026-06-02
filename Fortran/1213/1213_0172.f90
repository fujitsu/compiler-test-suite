module m1
type y
     integer(8)::dx
  class(t),allocatable::v(:)
 end type
  type z
    integer(8)::z1
  end type
  type t
     integer(8)::du
  end type
  type ,extends(t)::te
     integer(8)::dx
     class(z),allocatable::name(:)
  end type
contains
subroutine s1(m)
 type(y)::va(m),vb(m)
  class(z),allocatable::q
  class(*),allocatable::e(:)
  class(*),allocatable::v(:)
  class(t),allocatable::w(:)
    allocate(te::w(2))
    select type(w)
     type is(te)
       allocate(z::w(1)%name(2))
       allocate(z::w(2)%name(2))
    end select

    call ss

  allocate(t::e(2))
  allocate(   va(m)%v,v,e(2),vb(m)%v,mold=w,stat=nn)
   if (nn==0) print *,7652
   if (.not.allocated(va(m)%v)) print *,80001
   if (.not.allocated(v)) print *,80002
   if (allocated(vb(m)%v)) print *,80003
    k=0
    select type(v)
     type is(te)
      if (allocated(v(1)%name)) print *,2829
      k=1
      if (.not.same_type_as(q,v(1)%name)) print *,2828
      deallocate(v(1)%name,stat=n)
      if (n==0) print *,282
      if (allocated(v(2)%name)) print *,2829
      if (.not.same_type_as(q,v(2)%name)) print *,2828
      deallocate(v(2)%name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
 k=0
    select type(p=>va(m)%v(2))
     type is(te)
      if (allocated(p%name)) print *,2829
      k=1
      if (.not.same_type_as(q,p      %name)) print *,2828
      deallocate(p      %name,stat=n)
      if (n==0) print *,282
    end select
    if (k/=1) print *,5255
!    k=0
!    select type(p=>vb(m)%v(2))
!     type is(te)
!      if (allocated(p%name)) print *,2829
!      k=1
!      if (.not.same_type_as(q,p      %name)) print *,2828
!      deallocate(p      %name,stat=n)
!      if (n==0) print *,282
!    end select
!    if (k/=1) print *,5255
!   k=0
!    select type(p=>vb(m)%v(2))
!     type is(te)
!      if (allocated(p%na)) print *,2829
!      k=1
!      if (.not.same_type_as(q,p      %na)) print *,2828
!      deallocate(p      %na,stat=n)
!      if (n==0) print *,282
!    end select
!    if (k/=1) print *,5255
end
end
use m1
do n=1,30
call s1(2)
end do
     print *,'sngg631s : pass'
     end
subroutine ss
  integer,allocatable::d(:)
  allocate(d(1000),source=-1)
  write(1,*) d
  deallocate(d)
end
