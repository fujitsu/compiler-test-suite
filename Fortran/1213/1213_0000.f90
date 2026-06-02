module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type,extends(e)::ee
     integer(8),allocatable::e2
 end type
  type,extends(ee)::eee
     integer(8),allocatable::e3
 end type
  type t
     integer(8)::du
     class(*),allocatable::name
  end type
contains
subroutine s0
  class(z),allocatable::w
allocate(ee::w)
    select type(w)
      type is(ee)
    allocate(w%e1,source=111_8)
    allocate(w%e2,source=112_8)
    end select
call s1(w)
   k=0
    select type(w)
      type is(eee)
    if (w%e1/=211_8) print *,3001
    if (w%e2/=212_8) print *,3002
    if (w%e3/=213_8) print *,3003
      k=1
   end select
         if (k/=1) print *,12288
end
subroutine s1(w)
  class(z),allocatable,intent(out)::w
allocate(eee::w)
   k=0
    select type(w)
      type is(eee)
    allocate(w%e1,source=211_8)
    allocate(w%e2,source=212_8)
    allocate(w%e3,source=213_8)
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
do n=1,30
call s0
end do
     print *,'sngg358s : pass'
     end
