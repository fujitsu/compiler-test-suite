     module m1
       type :: b
         integer(8):: d1
         class (*),allocatable:: bb
       end type
       type :: c
         integer(8):: d2(2)
         class (*),allocatable:: cc
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
select type(q=>v2%cc)
  type is(be)
     q    %d1=1
     allocate(ce::q    %bb)
select type(w=>q    %bb)
  type is(ce)
     w       %d2=11
     allocate(be::w       %cc)
select type(g=>w %cc)
  type is(be)
     g          %d1=11
     allocate(ce::g          %bb)
select type(z=>g    %bb)
  type is(ce)
     z             %d2=111
     if (any(z             %d2/=111)) print *,1001
       allocate(z%cce ,source=22222)
       z%d4=22222
!print '(1hx,z16.16)',loc(z%cce)
end select
end select
end select
end select
     v1=v2
select type(q=>v1%cc)
  type is(be)
select type(w=>q    %bb)
  type is(ce)
select type(g=>w %cc)
  type is(be)
select type(z=>g    %bb)
  type is(ce)
!print '(1hy,z16.16)',loc(z%cce)
      if (z%cce/=22222) print *,6001
      z%cce=-22222
end select
end select
end select
end select
select type(q=>v2%cc)
  type is(be)
select type(w=>q    %bb)
  type is(ce)
select type(g=>w %cc)
  type is(be)
select type(z=>g    %bb)
  type is(ce)
!print '(1hy,z16.16)',loc(z%cce)
      if (z%cce/=22222) print *,8001
end select
end select
end select
end select
     end
     call s2
     print *,'sngg842p : pass'
     end 

