 subroutine s1
  type q
     integer(8)::dz1
  end type
  type q1
     integer(8)::dz1
     integer(8)::d1
  end type
  type q2
     integer(8)::dz2
     integer(8),pointer::d2
  end type
  type q3
     integer(8)::dz3
     integer(8),allocatable::d3
  end type
  type q4
     integer(8)::dz4
     type(q),pointer::d4
  end type
  type q5
     integer(8)::dz5
     type(q),allocatable::d5
  end type
  type q6
     integer(8)::dz6
     class(q),pointer::d6
  end type
  type q7
     integer(8)::dz7
     class(q),allocatable::d7
  end type
  type xq1
     type(q1)::h
  end type
  type xq2
     type(q2)::h
  end type
  type xq3
     type(q3)::h
  end type
  type xq4
     type(q4)::h
  end type
  type xq5
     type(q5)::h
  end type
  type xq6
     type(q6)::h
  end type
  type xq7
     type(q7)::h
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
!    type(xq1)::h1=xq1(q1(0,1))
!     type(xq2)::h2=xq2(q2(1,null()))
      type(xq3)::h3=xq3(q3(1,null()))
!     type(xq4)::h4=xq4(q4(1,null()))
!     type(xq5)::h5=xq5(q5(1,null()))
!     type(xq6)::h6=xq6(q6(1,null()))
!     type(xq7)::h7=xq7(q7(1,null()))
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
!   if (v(m)%h1%h%d1/=1) print *,3821
!    if (associated(v(m)%h2%h%d2)) print *,3822
!    if (v(m)%h2%h%dz2/=1) print *,38211
     if (allocated(v(m)%h3%h%d3)) print *,3823
     if (v(m)%h3%h%dz3/=1) print *,38212
!    if (associated(v(m)%h4%h%d4)) print *,384
!    if (v(m)%h4%h%dz4/=1) print *,38213
!    if (allocated(v(m)%h5%h%d5)) print *,3825
!    if (v(m)%h5%h%dz5/=1) print *,38214
!    if (associated(v(m)%h6%h%d6)) print *,386
!    if (.not.same_type_as(g,v(m)%h6%h%d6)) print *,3868
!    if (v(m)%h6%h%dz6/=1) print *,38215
!    if (allocated(v(m)%h7%h%d7)) print *,3827
!    if (.not.same_type_as(g,v(m)%h7%h%d7)) print *,3869
!    if (v(m)%h7%h%dz7/=1) print *,38216
  end do
 end select
 if (k/=1) print *,292
end
call ss()
call s1()
     print *,'sngg225t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
