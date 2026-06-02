     module m1
       type :: b
         integer(8):: d1
         class (c),allocatable:: bb
       end type
       type :: c
         integer(8):: d2(2)
         class (b),allocatable:: cc
       end type
!       type,extends(b)::be
!         integer(8):: d3
!         integer,allocatable::bbe
!       end type
       type,extends(c)::ce
         integer(8):: d4
         integer,allocatable::cce
       end type
     end
     
     subroutine s2
     use m1
     class (c),allocatable :: v2,v1
     allocate(v2)
     v2%d2=1
     allocate(v2%cc)
     v2%cc%d1=1
     allocate(v2%cc%bb)
     v2%cc%bb%d2=11
     allocate(v2%cc%bb%cc)
     v2%cc%bb%cc%d1=11
     allocate(ce::v2%cc%bb%cc%bb)
     v2%cc%bb%cc%bb%d2=111
     if (any(v2%cc%bb%cc%bb%d2/=111)) print *,1001
     k=0
     select type(p=>v2%cc%bb%cc%bb)
      type is(ce)
       k=1
       allocate(p%cce ,source=22222)
       p%d4=22222
     end select
     if (k/=1) print *,9001
     v1=v2
     select type(p=>v1%cc%bb%cc%bb)
      type is(ce)
!print '(1hy,z16.16)',loc(p%cce)
      if (p%cce/=22222) print *,6001
     end select
     end
     call s2
     print *,'sngg840p : pass'
     end 

