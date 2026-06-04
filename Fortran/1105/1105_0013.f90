     module m1
       type :: b
         integer(8):: d1
         class (c),allocatable:: bb
       end type
       type :: c
         integer(8):: d2(2)
         class (b),allocatable:: cc
       end type
       type,extends(b)::be
         integer(8):: d3
         integer,allocatable::bbe
       end type
       type,extends(c)::ce
         integer(8):: d4
         integer,allocatable::cce
       end type
     end
     
     subroutine s2
     use m1
     class (c),allocatable :: v2,v1
     allocate(ce::v2)
     v2%d2=1
     allocate(be::v2%cc)
     v2%cc%d1=1
     allocate(ce::v2%cc%bb)
     v2%cc%bb%d2=11
     allocate(be::v2%cc%bb%cc)
     v2%cc%bb%cc%d1=11
     allocate(ce::v2%cc%bb%cc%bb)
     v2%cc%bb%cc%bb%d2=111
     if (any(v2%cc%bb%cc%bb%d2/=111)) print *,1001
     if (any(v2%cc%bb%d2/=11)) print *,1011
     if (any(v2%d2/=1)) print *,1021
     if (    v2%cc%d1/=1) print *,2021
     if (    v2%cc%bb%cc%d1/=11) print *,2031
     select type(v2)
      type is(ce)
       allocate(v2%cce,source=2)
       v2%d4=2
     end select
     select type(p=>v2%cc)
      type is(be)
       allocate(p%bbe ,source=22)
       p%d3=22
     end select
     select type(p=>v2%cc%bb)
      type is(ce)
       allocate(p %cce,source=222)
       p%d4=222
     end select
     select type(p=>v2%cc%bb%cc)
      type is(be)
       allocate(p%bbe ,source=2222)
       p%d3=2222
     end select
     k=0
     select type(p=>v2%cc%bb%cc%bb)
      type is(ce)
       k=1
       allocate(p%cce ,source=22222)
       p%d4=22222
     end select
     if (k/=1) print *,9001
     allocate(v1,source=v2)
     select type(p=>v1%cc%bb%cc%bb)
      type is(ce)
!print '(1hy,z16.16)',loc(p%cce)
     end select
     v2%d2=-1
     v2%cc%bb%d2=-11
     v2%cc%bb%cc%bb%d2=-111
     v2%cc%d1=-1
     v2%cc%bb%cc%d1=-11
     if (any(v1%cc%bb%cc%bb%d2/=111)) print *,1201
     if (any(v1%cc%bb%d2/=11)) print *,1211
     if (any(v1%d2/=1)) print *,1221
     if (v1%cc%d1/=1) print *,1301
     if (v1%cc%bb%cc%d1/=11) print *,1302
     select type(v2)
      type is(ce)
       v2%cce=-2
       v2%d4=-2
     end select
     select type(p=>v2%cc)
      type is(be)
       p%bbe =-22
       p%d3=-22
     end select
     select type(p=>v2%cc%bb)
      type is(ce)
       p %cce=-222
       p%d4=-222
     end select
     select type(p=>v2%cc%bb%cc)
      type is(be)
       p%bbe =-2222
       p%d3=-2222
     end select
     k=0
     select type(p=>v2%cc%bb%cc%bb)
      type is(ce)
       k=1
       p%cce =-22222
       p%d4=-22222
     end select
     if (k/=1) print *,8002
     select type(v1)
      type is(ce)
       if (v1%cce/=2) print *,5001
       if (v1%d4/=2) print *,5003
     end select
     select type(p=>v1%cc)
      type is(be)
       if (p%bbe /=22) print *,5031
       if (p%d3/=22) print *,5041
     end select
     select type(p=>v1%cc%bb)
      type is(ce)
       if (p %cce/=222) print *,5051
       if (p%d4/=222) print *,5061
     end select
     select type(p=>v1%cc%bb%cc)
      type is(be)
       if (p%bbe /=2222) print *,5071
       if (p%d3/=2222) print *,5081
     end select
     select type(p=>v1%cc%bb%cc%bb)
      type is(ce)
!print '(1hx,z16.16)',loc(p%cce)
       if (p%cce /=22222) print *,5082
       if (p%d4/=22222) print *,5091
     end select
     deallocate(v2)
     end
     call s2
     print *,'sngg838p : pass'
     end 

