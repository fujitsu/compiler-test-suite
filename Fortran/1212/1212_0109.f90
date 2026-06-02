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
contains
subroutine s1(w)
 type t
     integer(8)::du
     class(e),allocatable::name
  end type
   type(t)::v
  class(e)::w(:)
 type u
     integer(8)::du
     class(e),allocatable::w(:)
   end type
   type(u)::b
    select type(w)
      type is(ee)
    allocate(w(2)%e1,source=111_8)
    allocate(w(2)%e2,source=112_8)
    !print '(z16.16)',loc(w%e1)
    end select
b%w=w(:)

       v%name=b%w(2)
   k=0
   select type(p=>v%name)
    type is(ee)
      if (p     %e1/=111) print *,2829
      if (p     %e2/=112) print *,2819
 !   print '(z16.16)',loc(p%e1)
      p     %e1=222
      p     %e2=223
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(r=>b%w)
      type is(ee)
       if (r(2)%e1/=111) print *,3829
       if (r(2)%e2/=112) print *,3819
      k=1
   end select
         if (k/=1) print *,12288
end
end
use m1
  class(e),allocatable::w(:)
do n=1,30
allocate(ee::w(2))
call s1(w)
deallocate(w)
end do
     print *,'sngg349s : pass'
     end
