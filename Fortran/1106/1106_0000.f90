module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
    integer(8)::z2
     !integer(8),allocatable::e1
 end type
contains
subroutine s1(w)
     class(*),allocatable::name
  class(*)::w
   select type(w      )
    type is(e)
    w%z1=11 
    w%z2=11 
    !allocate(w%e1,source=111_8) 
end select
       allocate(name,source=w)    
end subroutine
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
use m1
integer::k=-1
  class(e),allocatable::w
allocate(w)
call s2(k)
call s1(w)
     print *,'sngg322t : pass'
     end 

