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
  type t
     integer(8)::du
     class(*),allocatable::name
  end type
contains
subroutine s1(w)
  type(t)::v
  class(*)::w
    select type(w)
      type is(ee)
    allocate(w%e1,source=111_8)
    allocate(w%e2,source=112_8)
    !print '(z16.16)',loc(w%e1)
    end select

       v%name=w
   k=0
   select type(p=>v%name)
    type is(ee)
      if (p     %e1/=111) print *,2829
      if (p     %e2/=112) print *,2839
    !print '(z16.16)',loc(p%e1)
      p     %e1=222
      p     %e2=224
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(w)
      type is(ee)
       if (w%e1/=111)  print *,3829
       if (w%e2/=112)  print *,3839
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
  class(*),allocatable::w
allocate(ee::w)
call s1(w)
     print *,'sngg249s : pass'
     end
