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
         integer,allocatable::bev
       end type
       type,extends(c)::ce
         integer(8):: d4
         integer,allocatable::cev
       end type
     end
     
     subroutine s2
     use m1
     class (c),allocatable :: v2,v1
     allocate(v2)
     v2%d2=1
     allocate(v2%cc)
     allocate(v2%cc%bb)
     v2%cc%bb%d2=11
     allocate(v2%cc%bb%cc)
     allocate(v2%cc%bb%cc%bb)
     v2%cc%bb%cc%bb%d2=111
     if (any(v2%cc%bb%cc%bb%d2/=111)) print *,1001
     if (any(v2%cc%bb%d2/=11)) print *,1011
     if (any(v2%d2/=1)) print *,1021
     v1=v2
     v2%d2=-1
     v2%cc%bb%d2=-11
     v2%cc%bb%cc%bb%d2=-111
     if (any(v1%cc%bb%cc%bb%d2/=111)) print *,1201
     if (any(v1%cc%bb%d2/=11)) print *,1211
     if (any(v1%d2/=1)) print *,1221
     deallocate(v2)
     end
     call s2
     print *,'sngg836p : pass'
     end 

