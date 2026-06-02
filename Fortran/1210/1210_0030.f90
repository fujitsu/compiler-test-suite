module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
contains
subroutine s1(name)
     class(z),allocatable::name(:)
  type(e)::w(2)
    w%z1=11 
    allocate(w(1)%e1,source=111_8) 
    allocate(w(2)%e1,source=111_8) 
       name=w    
       if (name(1)%z1/=11) print *,2828
       if (name(2)%z1/=11) print *,28282
   k=0
   select type(p=>name)
    type is(e)
      if (p(1)  %e1/=111) print *,2829
      if (p(2)  %e1/=111) print *,28292
      p(1)  %e1=222
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,1228
   if (w(1)%z1/=11) print *,8281
   if (w(1)%e1/=111) print *,8282
   if (w(2)%z1/=11) print *,82812
   if (w(2)%e1/=111) print *,82822
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
     class(z),allocatable::name(:)
call s2(k)
call s1(name)
     print *,'sngg720r : pass'
     end 

