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
     class(z),allocatable::name
  end type
contains
subroutine s1(w)
  type(t)::v
  class(z)::w
    w%z1=11 
    select type(w)
      type is(ee)
    allocate(w%e1,source=111_8) 
        allocate(w%e2,source=1111_8) 
    end select

       v%name=w    
       if (v%name%z1/=11) print *,2828
   k=0
   select type(p=>v%name)
    type is(ee)
      if (p     %e1/=111) print *,2829
      if (p     %e2/=1111) print *,28292
      p     %e1=222
      p     %e2=2222
      k=1
   end select
   if (k/=1) print *,1228
   k=0
    select type(w)
      type is(ee)
       if (w%z1/=11) print *,3828
       if (w%e1/=111) print *,3829
       if (w%e2/=1111) print *,38292
      k=1
   end select
   if (k/=1) print *,12288
end
recursive subroutine s2(k)
  integer::a(1000)
  a=k
  call s21(a)
end
subroutine s21(a)
  integer::a(*   )
 write(1001,*)a(1:1000)
end
end
use m1
integer::k=-1
  class(e),allocatable::w
allocate(ee::w)
call s2(k)
call s1(w)
     print *,'sngg728r : pass'
     end 

