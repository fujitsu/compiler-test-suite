 subroutine s1
  type r
     integer(8)::z
  end type
  type q
     integer(8)::yd
     integer(8)::y1=1
     integer(8),pointer::y2=>null()
     integer(8),allocatable::y3
     type(r),pointer::y4=>null()
     type(r),allocatable::y5
     class(r),pointer::y6=>null()
     class(r),allocatable::y7
     type(r),allocatable::y9
     class(r),allocatable::ya
  end type
  type t
     integer(8)::d
  end type
  type,extends(t)::te
     integer(8)::dx
     integer(8)::d1=1
     integer(8),pointer::d2=>null()
     integer(8),allocatable::d3
     type(q),pointer::d4=>null()
     type(q),allocatable::d5
     class(q),pointer::d6=>null()
     class(q),allocatable::d7
     type(q)::d8
     type(q),allocatable::d9
     class(q),allocatable::da
  end type

     class(q),allocatable::g
     class(r),allocatable::gr
  class(t),allocatable::v(:),w(:),vv(:),v3(:)
  allocate(te::w(4))
    allocate(   v,mold=w)
k=0
select type(v)
  type is(te)
  k=1
  do m=1,size(w)
    if (v(m)%d1/=1) print *,3821
    if (associated(v(m)%d2)) print *,3822
    if (allocated(v(m)%d3)) print *,3823
    if (associated(v(m)%d4)) print *,384
    if (allocated(v(m)%d5)) print *,3825
    if (associated(v(m)%d6)) print *,386
    if (.not.same_type_as(g,v(m)%d6)) print *,3868
    if (allocated(v(m)%d7)) print *,3827
    if (.not.same_type_as(g,v(m)%d7)) print *,3869
    if (allocated(v(m)%d9)) print *,3828
    if (allocated(v(m)%da)) print *,3829
    if (.not.same_type_as(g,v(m)%da)) print *,38690
    if (v(m)%d8%y1/=1) print *,38218
    if (associated(v(m)%d8%y2)) print *,38228
    if (allocated(v(m)%d8%y3)) print *,38238
    if (associated(v(m)%d8%y4)) print *,3848
    if (allocated(v(m)%d8%y5)) print *,38258
    if (associated(v(m)%d8%y6)) print *,3868
    if (.not.same_type_as(gr,v(m)%d8%y6)) print *,38688
    if (allocated(v(m)%d8%y7)) print *,38278
    if (.not.same_type_as(gr,v(m)%d8%y7)) print *,38698
    if (allocated(v(m)%d8%y9)) print *,38288
    if (allocated(v(m)%d8%ya)) print *,38298
    if (.not.same_type_as(gr,v(m)%d8%ya)) print *,386908
  end do
 end select
 if (k/=1) print *,292
 !
    allocate(   vv,source=w)
k=0
select type(vv)
  type is(te)
  k=1
  do m=1,size(w)
    if (vv(m)%d1/=1) print *,3721
    if (associated(vv(m)%d2)) print *,3722
    if (allocated(vv(m)%d3)) print *,3723
    if (associated(vv(m)%d4)) print *,374
    if (allocated(vv(m)%d5)) print *,3725
    if (associated(vv(m)%d6)) print *,376
    if (.not.same_type_as(g,vv(m)%d6)) print *,3768
    if (allocated(vv(m)%d7)) print *,3727
    if (.not.same_type_as(g,vv(m)%d7)) print *,3769
    if (allocated(vv(m)%d9)) print *,3728
    if (allocated(vv(m)%da)) print *,3729
    if (.not.same_type_as(g,vv(m)%da)) print *,37690
    if (vv(m)%d8%y1/=1) print *,37218
    if (associated(vv(m)%d8%y2)) print *,37228
    if (allocated(vv(m)%d8%y3)) print *,37238
    if (associated(vv(m)%d8%y4)) print *,3748
    if (allocated(vv(m)%d8%y5)) print *,37258
    if (associated(vv(m)%d8%y6)) print *,3768
    if (.not.same_type_as(gr,vv(m)%d8%y6)) print *,37688
    if (allocated(vv(m)%d8%y7)) print *,37278
    if (.not.same_type_as(gr,vv(m)%d8%y7)) print *,37698
    if (allocated(vv(m)%d8%y9)) print *,37288
    if (allocated(vv(m)%d8%ya)) print *,37298
    if (.not.same_type_as(gr,vv(m)%d8%ya)) print *,376908
  end do
 end select
 if (k/=1) print *,252
!
k=0
select type(w)
  type is(te)
  k=1
  do m=1,size(w)
    w(m)%d1=11
    allocate(w(m)%d2,source=11_8)
    allocate(w(m)%d3,source=11_8)
    allocate(w(m)%d4,source=fq()   )
    allocate(w(m)%d5,source=fq()   )
    allocate(w(m)%d6,source=fq()   )
    allocate(w(m)%d7,source=fq()   )
    allocate(w(m)%d9,source=fq()   )
    allocate(w(m)%da,source=fq()   )
    w(m)%d8%y1=11_8
    allocate(w(m)%d8%y2,source=11_8)
    allocate(w(m)%d8%y3,source=11_8)
    allocate(w(m)%d8%y4,source=r(11_8))
    allocate(w(m)%d8%y5,source=r(11_8))
    allocate(w(m)%d8%y6,source=r(11_8))
    allocate(w(m)%d8%y7,source=r(11_8))
    allocate(w(m)%d8%y9,source=r(11_8))
    allocate(w(m)%d8%ya,source=r(11_8))
  end do
 end select
 if (k/=1) print *,252
!
 allocate(v3,source=w)
k=0
select type(w)
  type is(te)
  k=1
  do m=1,size(w)
    w(m)%d1=22
    w(m)%d2=22
    w(m)%d3=22
    w(m)%d4%y3=22
    w(m)%d5%y3=(22)
    w(m)%d6%y3=(22)
    w(m)%d7%y3=(22)
    w(m)%d9%y3=(22)
    w(m)%da%y3=(22)
    w(m)%d8%y1=22
    w(m)%d8%y2=22
    w(m)%d8%y3=22
    w(m)%d8%y4=r(22)
    w(m)%d8%y5=r(22)
  select type(p=>w(m)%d8%y6)
    type is(r)
    p         =r(22)
  end select
  select type(p=>w(m)%d8%y7)
    type is(r)
    p         =r(22)
  end select
    w(m)%d8%y9=r(22)
  select type(p=>w(m)%d8%ya)
    type is(r)
    p         =r(22)
  end select
  end do
 end select
 if (k/=1) print *,232
!
k=0
select type(v3)
  type is(te)
  k=1
  do m=1,size(w)
    if(v3(m)%d1/=11)print *,52611
    if(v3(m)%d2/=22)print *,52621
    if(v3(m)%d3/=11)print *,52613
    if (v3(m)%d8%y1/=11) print *,57218
    if(v3(m)%d8%y2/=22)print *,52614
    if(v3(m)%d8%y3/=11)print *,52615
    if(v3(m)%d4%y3/=(22))print *,52616
    if(v3(m)%d5%y3/=(11))print *,52617
    if(v3(m)%d6%y3/=(22))print *,52618
    if(v3(m)%d7%y3/=(11))print *,52619
    if(v3(m)%d9%y3/=(11))print *,526213
    if(v3(m)%da%y3/=(11))print *,52631
    if(v3(m)%d8%y4%z/=(22))print *,52641
    if(v3(m)%d8%y5%z/=(11))print *,52651
    if(v3(m)%d8%y6%z/=(22))print *,52661
    if(v3(m)%d8%y7%z/=(11))print *,52671
    if(v3(m)%d8%y9%z/=(11))print *,52681
    if(v3(m)%d8%ya%z/=(11))print *,52691
    if (.not.same_type_as(g,v3(m)%d6)) print *,1768
    if (.not.same_type_as(g,v3(m)%d7)) print *,1769
    if (.not.same_type_as(g,v3(m)%da)) print *,17690
    if (.not.same_type_as(gr,v3(m)%d8%y6)) print *,17688
    if (.not.same_type_as(gr,v3(m)%d8%y7)) print *,17698
    if (.not.same_type_as(gr,v3(m)%d8%ya)) print *,176908
  end do
 end select
 if (k/=1) print *,252
contains
  function fq() result(rr)
    class(q),allocatable::rr
  allocate(rr)
  rr%yd=11
  rr%y1=11
  allocate(rr%y2,source=11_8)
  allocate(rr%y3,source=11_8)
  allocate(rr%y4,source=r(11_8))
  allocate(rr%y5,source=r(11_8))
  allocate(rr%y6,source=r(11_8))
  allocate(rr%y7,source=r(11_8))
  allocate(rr%y9,source=r(11_8))
  allocate(rr%ya,source=r(11_8))
 end
end
call ss()
call s1()
     print *,'sngg171t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
