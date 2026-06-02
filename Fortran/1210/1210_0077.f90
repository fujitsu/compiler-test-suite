subroutine s1(n)
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
     class(z),allocatable::name(:)
  class(e),pointer::w(:)
  allocate(w(n))
    w(1)%z1=11 
    w(2)%z1=11 
    allocate(w(1)%e1,source=111_8) 
    allocate(w(2)%e1,source=111_8) 
       name=w(:) 
   k=0
   select type(p=>name)
    type is(e)
       if (p(1)%z1/=11) print *,2828
      if (p(1)  %e1/=111) print *,2829
      p(1)  %e1=222
       if (p(2)%z1/=11) print *,2828
      if (p(2)  %e1/=111) print *,2829
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,1228
       if (w(1)%z1/=11) print *,3828
       if (w(1)%e1/=111) print *,3829
       if (w(2)%z1/=11) print *,3828
       if (w(2)%e1/=111) print *,3829
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
integer::k=-1
call s2(k)
call s1(2)
     print *,'sngg769r : pass'
     end 

