module mb
 type b
   integer::b01
 end type
end
module mbb
 type bb
   integer::bb01
 end type
end
module me
 use mb
 use mbb
 type,extends(b)::e
   integer,allocatable::e01
   class(bb),allocatable::e02
   integer            ::e03
 end type
end
module mee
 use mbb
 type,extends(bb)::ee
   integer::ee01
   integer,allocatable::ee02(:)
   integer            ::ee03
 end type
end
module m1
use me
use mee
interface
  subroutine gen_alloc(alloc,source)
   use mb
   class(b),allocatable::alloc
   class(b),allocatable::source
  end subroutine
end interface
contains
subroutine s1(a,d)
class(b),allocatable::a
class(b),allocatable::d
!allocate(a,source=d)         ! NG
call gen_alloc(a,source=d)         
k=0
select type(d)
 type is(e)
   d%e01=-d%e01
   select type(p=>d%e02)
    type is(ee)
      k=1
      p%ee01=-p%ee01
      p%ee02=-p%ee02
      p%ee03=-p%ee03
   end select
   d%e03=-d%e03
end select
if (k/=1) print *,7001
end subroutine
end
module m3
use m1
use mee
contains
subroutine s3(a,d)
class(b)::a
class(b)::d
  if (a%b01/=2) print *,1000
  k=0
  select type(a)
   type is(e)
     if (a%e01/=1) print *,1001,a%e01
     if (a%e03/=3) print *,1003,a%e03
     select type(d)
      type is(e)
        if (loc(a%e02)==loc(d%e02)) print *,1002
        k=1
     end select
     select type(p=>a%e02)
      type is(ee)
        k=k+1
        if (p%ee01/=101) print *,2001
        if (any(p%ee02/=[111,112])) print *,2002
        if (p%ee03/=103) print *,2003
     end select
  end select
  if (k/=2) print *,9009
end subroutine
end
module m2
use me
use mee
contains
subroutine s2(d)
class(b),allocatable::d
type (ee)::v
allocate(e::d)
d%b01=2
select type(d)
type is(e)
 allocate(d%e01,source=1)
 d%e03=3
 v%ee01=101
 v%ee03=103
 allocate(v%ee02,source=[111,112])
 allocate(d%e02,source=v)
 v%ee01=-101
 v%ee02=-v%ee02
end select
end subroutine
end
use m1
use m2
use m3
class(b),allocatable::v,a
call s2(v)
call s1(a,v)
call s3(a,v)
print *,'sngg273k : pass'
end

  subroutine gen_alloc(alloc,source)
   use mb
   use me
   use mee
   class(b),allocatable::alloc
   class(b),allocatable::source
   integer(8)::p1,p2
   p1=0
   p2=0
   select type (pp=>source)
    type is(e)
      select type (p=>pp%e02)
       type is(ee)
         allocate(alloc,source=source)         
       type is(bb)
         allocate(alloc,source=source)         
       class default
       stop 998
     end select
    type is(b)
      allocate(alloc,source=source)         
    class default
      stop 999
   end select
!!! check
   select type (pp=>source)
    type is(e)
      select type (p=>pp%e02)
       type is(ee)
         p1=loc(p)        
      end select
   end select
   select type (pp=>alloc)
    type is(e)
      select type (p=>pp%e02)
       type is(ee)
         p2=loc(p)        
      end select
   end select
   if (p1==0 .or. p2==0) print *,9199
   if (p1== p2) print *,9200
  end subroutine
