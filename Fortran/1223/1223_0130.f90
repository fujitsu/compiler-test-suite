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
     class(*),pointer::d6
  end type
  type q7
     integer(8)::dz7
     class(*),allocatable::d7
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
     type(xq1)::h1(2,3)=xq1(q1(0,1))
     type(xq2)::h2(2,3)=xq2(q2(1,null()))
     type(xq3)::h3(2,3)=xq3(q3(1,null()))
     type(xq4)::h4(2,3)=xq4(q4(1,null()))
     type(xq5)::h5(2,3)=xq5(q5(1,null()))
     type(xq6)::h6(2,3)=xq6(q6(1,null()))
     type(xq7)::h7(2,3)=xq7(q7(1,null()))
  end type

     class(q),allocatable::g
  class(*),allocatable::v(:),w(:)
    allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
  do n1=1,2
  do n2=1,3
  do k1=1,2
  do k2=1,3
    if (v(m)%h1(n1,n2)%h(k1,k2)%d1/=1) print *,3821
    if (associated(v(m)%h2(n1,n2)%h(k1,k2)%d2)) print *,3822
    if (v(m)%h2(n1,n2)%h(k1,k2)%dz2/=1) print *,38211
    if (allocated(v(m)%h3(n1,n2)%h(k1,k2)%d3)) print *,3823
    if (v(m)%h3(n1,n2)%h(k1,k2)%dz3/=1) print *,38212
    if (associated(v(m)%h4(n1,n2)%h(k1,k2)%d4)) print *,384
    if (v(m)%h4(n1,n2)%h(k1,k2)%dz4/=1) print *,38213
    if (allocated(v(m)%h5(n1,n2)%h(k1,k2)%d5)) print *,3825
    if (v(m)%h5(n1,n2)%h(k1,k2)%dz5/=1) print *,38214
    if (associated(v(m)%h6(n1,n2)%h(k1,k2)%d6)) print *,386
    if (     same_type_as(g,v(m)%h6(n1,n2)%h(k1,k2)%d6)) print *,3868
    if (v(m)%h6(n1,n2)%h(k1,k2)%dz6/=1) print *,38215
    if (allocated(v(m)%h7(n1,n2)%h(k1,k2)%d7)) print *,3827
    if (     same_type_as(g,v(m)%h7(n1,n2)%h(k1,k2)%d7)) print *,3869
    if (v(m)%h7(n1,n2)%h(k1,k2)%dz7/=1) print *,38216
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
     print *,'sngg242t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
