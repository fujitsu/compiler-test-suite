 subroutine s1
  type q
     integer(8)::dz1
  end type
  type q1
     integer(8)::dz1
     integer(8)::d1=1
  end type
  type q2
     integer(8)::dz2
     integer(8),pointer::d2=>null()
  end type
  type q3
     integer(8)::dz3
     integer(8),allocatable::d3
  end type
  type q4
     integer(8)::dz4
     type(q),pointer::d4=>null()
  end type
  type q5
     integer(8)::dz5
     type(q),allocatable::d5
  end type
  type q6
     integer(8)::dz6
     class(q),pointer::d6=>null()
  end type
  type q7
     integer(8)::dz7
     class(q),allocatable::d7
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
!    type(q2)::h2
!     type(q3)::h3
      type(q4)::h4
!     type(q5)::h5
!     type(q6)::h6
!     type(q7)::h7
!     type(q1)::h1
  end type

     class(q),allocatable::g
  class(t),allocatable::v(:),w(:)
    allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
!    if (v(m)%h1%d1/=1) print *,3821
!   if (associated(v(m)%h2%d2)) print *,3822
!    if (allocated(v(m)%h3%d3)) print *,3823
     if (associated(v(m)%h4%d4)) print *,384
!    if (allocated(v(m)%h5%d5)) print *,3825
!    if (associated(v(m)%h6%d6)) print *,386
!    if (.not.same_type_as(g,v(m)%h6%d6)) print *,3868
!    if (allocated(v(m)%h7%d7)) print *,3827
!    if (.not.same_type_as(g,v(m)%h7%d7)) print *,3869
  end do
 end select
 if (k/=1) print *,292
end
call ss()
call s1()
     print *,'sngg155t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
