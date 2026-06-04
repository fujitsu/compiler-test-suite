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
  type,extends(t)::te
     integer(8)::dx
     integer(8)::e1=1
     integer(8),pointer::e2=>null()
     integer(8),allocatable::e3
     type(q),pointer::e4=>null()
     type(q),allocatable::e5
     class(q),pointer::e6=>null()
     class(q),allocatable::e7
     type(q)::e8
     type(q),allocatable::e9
     class(q),allocatable::ea
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
!
    if (v(m)%e1/=1) print *,38216
    if (associated(v(m)%e2)) print *,38226
    if (allocated(v(m)%e3)) print *,38236
    if (associated(v(m)%e4)) print *,3846
    if (allocated(v(m)%e5)) print *,38256
    if (associated(v(m)%e6)) print *,3866
    if (.not.same_type_as(g,v(m)%e6)) print *,38686
    if (allocated(v(m)%e7)) print *,38276
    if (.not.same_type_as(g,v(m)%e7)) print *,38696
    if (allocated(v(m)%e9)) print *,38286
    if (allocated(v(m)%ea)) print *,38296
    if (.not.same_type_as(g,v(m)%ea)) print *,386906
    if (v(m)%e8%y1/=1) print *,382186
    if (associated(v(m)%e8%y2)) print *,382286
    if (allocated(v(m)%e8%y3)) print *,382386
    if (associated(v(m)%e8%y4)) print *,38486
    if (allocated(v(m)%e8%y5)) print *,382586
    if (associated(v(m)%e8%y6)) print *,38686
    if (.not.same_type_as(gr,v(m)%e8%y6)) print *,386886
    if (allocated(v(m)%e8%y7)) print *,382786
    if (.not.same_type_as(gr,v(m)%e8%y7)) print *,386986
    if (allocated(v(m)%e8%y9)) print *,382886
    if (allocated(v(m)%e8%ya)) print *,382986
    if (.not.same_type_as(gr,v(m)%e8%ya)) print *,3869086
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
!
    if (vv(m)%e1/=1) print *,37211
    if (associated(vv(m)%e2)) print *,37221
    if (allocated(vv(m)%e3)) print *,37231
    if (associated(vv(m)%e4)) print *,3741
    if (allocated(vv(m)%e5)) print *,37251
    if (associated(vv(m)%e6)) print *,3761
    if (.not.same_type_as(g,vv(m)%e6)) print *,37681
    if (allocated(vv(m)%e7)) print *,37271
    if (.not.same_type_as(g,vv(m)%e7)) print *,37691
    if (allocated(vv(m)%e9)) print *,37281
    if (allocated(vv(m)%ea)) print *,37291
    if (.not.same_type_as(g,vv(m)%ea)) print *,376901
    if (vv(m)%e8%y1/=1) print *,372181
    if (associated(vv(m)%e8%y2)) print *,372281
    if (allocated(vv(m)%e8%y3)) print *,372381
    if (associated(vv(m)%e8%y4)) print *,37481
    if (allocated(vv(m)%e8%y5)) print *,372581
    if (associated(vv(m)%e8%y6)) print *,37681
    if (.not.same_type_as(gr,vv(m)%e8%y6)) print *,376881
    if (allocated(vv(m)%e8%y7)) print *,372781
    if (.not.same_type_as(gr,vv(m)%e8%y7)) print *,376981
    if (allocated(vv(m)%e8%y9)) print *,372881
    if (allocated(vv(m)%e8%ya)) print *,372981
    if (.not.same_type_as(gr,vv(m)%e8%ya)) print *,3769081
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
    w(m)%e1=11
    allocate(w(m)%e2,source=11_8)
    allocate(w(m)%e3,source=11_8)
    allocate(w(m)%e4,source=fq()   )
    allocate(w(m)%e5,source=fq()   )
    allocate(w(m)%e6,source=fq()   )
    allocate(w(m)%e7,source=fq()   )
    allocate(w(m)%e9,source=fq()   )
    allocate(w(m)%ea,source=fq()   )
    w(m)%e8%y1=11_8
    allocate(w(m)%e8%y2,source=11_8)
    allocate(w(m)%e8%y3,source=11_8)
    allocate(w(m)%e8%y4,source=r(11_8))
    allocate(w(m)%e8%y5,source=r(11_8))
    allocate(w(m)%e8%y6,source=r(11_8))
    allocate(w(m)%e8%y7,source=r(11_8))
    allocate(w(m)%e8%y9,source=r(11_8))
    allocate(w(m)%e8%ya,source=r(11_8))
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
    w(m)%e1=22
    w(m)%e2=22
    w(m)%e3=22
    w(m)%e4%y3=22
    w(m)%e5%y3=(22)
    w(m)%e6%y3=(22)
    w(m)%e7%y3=(22)
    w(m)%e9%y3=(22)
    w(m)%ea%y3=(22)
    w(m)%e8%y1=22
    w(m)%e8%y2=22
    w(m)%e8%y3=22
    w(m)%e8%y4=r(22)
    w(m)%e8%y5=r(22)
  select type(p=>w(m)%e8%y6)
    type is(r)
    p         =r(22)
  end select
  select type(p=>w(m)%e8%y7)
    type is(r)
    p         =r(22)
  end select
    w(m)%e8%y9=r(22)
  select type(p=>w(m)%e8%ya)
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
    if(v3(m)%e1/=11)print *,5261112,v3(m)%e1
    if(v3(m)%e2/=22)print *,5262112
    if(v3(m)%e3/=11)print *,5261312
    if (v3(m)%e8%y1/=11) print *,5721812
    if(v3(m)%e8%y2/=22)print *,5261412
    if(v3(m)%e8%y3/=11)print *,5261512
    if(v3(m)%e4%y3/=(22))print *,5261612
    if(v3(m)%e5%y3/=(11))print *,5261712
    if(v3(m)%e6%y3/=(22))print *,5261812
    if(v3(m)%e7%y3/=(11))print *,5261912
    if(v3(m)%e9%y3/=(11))print *,52621312
    if(v3(m)%ea%y3/=(11))print *,5263112
    if(v3(m)%e8%y4%z/=(22))print *,5264112
    if(v3(m)%e8%y5%z/=(11))print *,5265112
    if(v3(m)%e8%y6%z/=(22))print *,5266112
    if(v3(m)%e8%y7%z/=(11))print *,5267112
    if(v3(m)%e8%y9%z/=(11))print *,5268112
    if(v3(m)%e8%ya%z/=(11))print *,5269112
    if (.not.same_type_as(g,v3(m)%e6)) print *,176812
    if (.not.same_type_as(g,v3(m)%e7)) print *,176912
    if (.not.same_type_as(g,v3(m)%ea)) print *,1769012
    if (.not.same_type_as(gr,v3(m)%e8%y6)) print *,1768812
    if (.not.same_type_as(gr,v3(m)%e8%y7)) print *,1769812
    if (.not.same_type_as(gr,v3(m)%e8%ya)) print *,17690812
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
     print *,'sngg173t : pass'
     end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
