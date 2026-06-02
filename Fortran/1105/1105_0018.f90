     module m1
       type :: b
         integer(8):: d1
         class (c),allocatable:: bb(:)
       end type
       type :: c
         integer(8):: d2(2)
         class (b),allocatable:: cc(:)
       end type
       type,extends(b)::be
         integer(8):: d3
         integer,allocatable::bbe(:)
       end type
       type,extends(c)::ce
         integer(8):: d4
         integer,allocatable::cce(:)
       end type
     end
     
     subroutine s2
     use m1
     class (c),allocatable :: v2(:),v1(:)
     allocate(ce::v2(2))
do n1=1,2
     v2(n1)%d2=1
     allocate(be::v2(n1)%cc(2))
     select type(d=>v2(n1))
      type is(ce)
       allocate(d%cce(2),source=2)
       d%d4=2
     end select
do n2=1,2
     v2(n1)%cc(n2)%d1=1
     allocate(ce::v2(n1)%cc(n2)%bb(2))
     select type(p=>v2(n1)%cc(n2))
      type is(be)
       allocate(p%bbe(2) ,source=22)
       p%d3=22
     end select
do n3=1,2
     v2(n1)%cc(n2)%bb(n3)%d2=11
     allocate(be::v2(n1)%cc(n2)%bb(n3)%cc(2))
     select type(p=>v2(n1)%cc(n2)%bb(n3))
      type is(ce)
       allocate(p %cce(2),source=222)
       p%d4=222
     end select
do n4=1,2
     v2(n1)%cc(n2)%bb(n3)%cc(n4)%d1=11
     allocate(ce::v2(n1)%cc(n2)%bb(n3)%cc(n4)%bb(2))
     select type(p=>v2(n1)%cc(n2)%bb(n3)%cc(n4))
      type is(be)
       allocate(p%bbe(2) ,source=2222)
       p%d3=2222
     end select
do n5=1,2
     v2(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5)%d2=111
     if (any(v2(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5)%d2/=111)) print *,1001
     if (any(v2(n1)%cc(n2)%bb(n3)%d2/=11)) print *,1011
     if (any(v2(n1)%d2/=1)) print *,1021
     if (    v2(n1)%cc(n2)%d1/=1) print *,2021
     if (    v2(n1)%cc(n2)%bb(n3)%cc(n4)%d1/=11) print *,2031
     k=0
     select type(p=>v2(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5))
      type is(ce)
       k=1
       allocate(p%cce(2) ,source=22222)
       p%d4=22222
     end select
     if (k/=1) print *,9001
end do
end do
end do
end do
end do
     v1=v2
do n1=1,2
do n2=1,2
do n3=1,2
do n4=1,2
do n5=1,2
     select type(p=>v1(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5))
      type is(ce)
!print '(1hy,z16.16)',loc(p%cce)
     end select
     v2(n1)%d2=-1
     v2(n1)%cc(n2)%bb(n3)%d2=-11
     v2(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5)%d2=-111
     v2(n1)%cc(n2)%d1=-1
     v2(n1)%cc(n2)%bb(n3)%cc(n4)%d1=-11
     if (any(v1(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5)%d2/=111)) print *,1201
     if (any(v1(n1)%cc(n2)%bb(n3)%d2/=11)) print *,1211
     if (any(v1(n1)%d2/=1)) print *,1221
     if (v1(n1)%cc(n2)%d1/=1) print *,1301
     if (v1(n1)%cc(n2)%bb(n3)%cc(n4)%d1/=11) print *,1302
     select type(d=>v2(n1))
      type is(ce)
       d     %cce=-2
       d     %d4=-2
     end select
     select type(p=>v2(n1)%cc(n2))
      type is(be)
       p%bbe =-22
       p%d3=-22
     end select
     select type(p=>v2(n1)%cc(n2)%bb(n5))
      type is(ce)
       p %cce=-222
       p%d4=-222
     end select
     select type(p=>v2(n1)%cc(n2)%bb(n3)%cc(n4))
      type is(be)
       p%bbe =-2222
       p%d3=-2222
     end select
     k=0
     select type(p=>v2(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5))
      type is(ce)
       k=1
       p%cce =-22222
       p%d4=-22222
     end select
     if (k/=1) print *,8002
     select type(d=>v1(n1))
      type is(ce)
       if (any(d     %cce/=2)) print *,5001
       if (d     %d4/=2) print *,5003
     end select
     select type(p=>v1(n1)%cc(n4))
      type is(be)
       if (any(p%bbe /=22)) print *,5031
       if (p%d3/=22) print *,5041
     end select
     select type(p=>v1(n1)%cc(n2)%bb(n5))
      type is(ce)
       if (any(p %cce/=222)) print *,5051
       if (p%d4/=222) print *,5061
     end select
     select type(p=>v1(n1)%cc(n2)%bb(n3)%cc(n4))
      type is(be)
       if (any(p%bbe /=2222)) print *,5071
       if (p%d3/=2222) print *,5081
     end select
     select type(p=>v1(n1)%cc(n2)%bb(n3)%cc(n4)%bb(n5))
      type is(ce)
!print '(1hx,z16.16)',loc(p%cce)
       if (any(p%cce /=22222)) print *,5082
       if (p%d4/=22222) print *,5091
     end select
end do
end do
end do
end do
end do
     deallocate(v2)
     end
     call s2
     print *,'sngg843p : pass'
     end 

