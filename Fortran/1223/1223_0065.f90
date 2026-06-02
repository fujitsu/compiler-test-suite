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
     integer(8),allocatable::dx
     class(q2),allocatable::h2
     class(q3),allocatable::h3
     class(q4),allocatable::h4
     class(q5),allocatable::h5
     class(q6),allocatable::h6
     class(q7),allocatable::h7
     class(q1),allocatable::h1
  end type

     class(q),allocatable::g
     class(q1),allocatable::g1
     class(q2),allocatable::g2
     class(q3),allocatable::g3
     class(q4),allocatable::g4
     class(q5),allocatable::g5
     class(q6),allocatable::g6
     class(q7),allocatable::g7
  class(t),allocatable::v(:),w(:)
    allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
    if (allocated(v(m)%dx    ) )print *,3823
    if (allocated(v(m)%h1    ) )print *,3823
    if (allocated(v(m)%h2    ) )print *,3823
    if (allocated(v(m)%h3    ) )print *,3823
    if (allocated(v(m)%h4    ) )print *,3823
    if (allocated(v(m)%h5    ) )print *,3823
    if (allocated(v(m)%h6    ) )print *,3823
    if (allocated(v(m)%h7    ) )print *,3823
    if (.not.same_type_as(v(m)%h1,g1   ) )print *,38241
    if (.not.same_type_as(v(m)%h2,g2   ) )print *,38242
    if (.not.same_type_as(v(m)%h3,g3   ) )print *,38243
    if (.not.same_type_as(v(m)%h4,g4   ) )print *,38244
    if (.not.same_type_as(v(m)%h5,g5   ) )print *,38245
    if (.not.same_type_as(v(m)%h6,g6   ) )print *,38246
    if (.not.same_type_as(v(m)%h7,g7   ) )print *,38247
  end do
 end select
 if (k/=1) print *,292
end
call ss()
call s1()
     print *,'sngg161t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
