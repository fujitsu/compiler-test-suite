module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type t
     integer(8)::du
     class(z),allocatable::name(:)
  end type
contains
subroutine s1(v)
  type(t)::v
  type(e)::w(2)
    w%z1=11 
    allocate(w(1)%e1,source=111_8) 
    allocate(w(2)%e1,source=111_8) 
       v%name=w    
       if (v%name(1)%z1/=11) print *,2828
       if (v%name(2)%z1/=11) print *,28282
   k=0
   select type(p=>v%name)
    type is(e)
      if (p(1)  %e1/=111) print *,2829
      if (p(2)  %e1/=111) print *,28292
      p(1)  %e1=222
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,1228
       if (w(1)%z1/=11) print *,3828
       if (w(1)%e1/=111) print *,3829
       if (w(2)%z1/=11) print *,38282
       if (w(2)%e1/=111) print *,38292
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
  type(t)::a
call s2(k)
call s1(a)
     print *,'sngg721r : pass'
     end 

