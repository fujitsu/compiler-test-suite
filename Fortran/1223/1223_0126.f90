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
  type xq1
     type(q1)::h(2,3)
  end type
  type xq2
     type(q2)::h(2,3)
  end type
  type xq3
     type(q3)::h(2,3)
  end type
  type xq4
     type(q4)::h(2,3)
  end type
  type xq5
     type(q5)::h(2,3)
  end type
  type xq6
     type(q6)::h(2,3)
  end type
  type xq7
     type(q7)::h(2,3)
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
     type(xq1)::h1(2,3)
     type(xq2)::h2(2,3)
     type(xq3)::h3(2,3)
     type(xq4)::h4(2,3)
     type(xq5)::h5(2,3)
     type(xq6)::h6(2,3)
     type(xq7)::h7(2,3)
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
do k1=1,2
do k2=1,3
do n1=1,2
do n2=1,3
    if (v(m)%h1(k1,k2)%h(n1,n2)%d1/=1) print *,3821
    if (associated(v(m)%h2(k1,k2)%h(n1,n2)%d2)) print *,3822
    if (allocated(v(m)%h3(k1,k2)%h(n1,n2)%d3)) print *,3823
    if (associated(v(m)%h4(k1,k2)%h(n1,n2)%d4)) print *,384
    if (allocated(v(m)%h5(k1,k2)%h(n1,n2)%d5)) print *,3825
    if (associated(v(m)%h6(k1,k2)%h(n1,n2)%d6)) print *,386
    if (allocated(v(m)%h7(k1,k2)%h(n1,n2)%d7)) print *,3827
    if (.not.same_type_as(g,v(m)%h6(k1,k2)%h(n1,n2)%d6)) print *,3868
    if (.not.same_type_as(g,v(m)%h7(k1,k2)%h(n1,n2)%d7)) print *,3869
  end do
  end do
  end do
  end do
  end do
 end select
 if (k/=1) print *,292
end
call ss()
call s1()
     print *,'sngg238t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
