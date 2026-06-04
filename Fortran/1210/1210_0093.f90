module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1(:)
 end type
contains
subroutine s1()
     class(z),allocatable::name(:)
type t
  class(e),allocatable::w(:)
end type
type(t)::y
allocate(y%w(2))
    y%w(1)%z1=11 
    y%w(2)%z1=11 
    allocate(y%w(1)%e1(2),source=111_8) 
    allocate(y%w(2)%e1(2),source=111_8) 
       name=y%w    
       if (name(1)%z1/=11) print *,2828
       if (name(2)%z1/=11) print *,2828
   k=0
   select type(p=>name)
    type is(e)
      if (any(p(1)     %e1/=111)) print *,2829
      p(1)  %e1=222
      if (any(p(2)     %e1/=111)) print *,2829
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,1228
       if (y%w(1)%z1/=11) print *,3828
       if (any(y%w(1)%e1/=111)) print *,3829
       if (y%w(2)%z1/=11) print *,3828
       if (any(y%w(2)%e1/=111)) print *,3829
end
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
call s2(k)
call s1()
     print *,'sngg805r : pass'
     end 

