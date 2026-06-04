subroutine s1(n)
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
     class(z),allocatable::name
  class(z),pointer::w(:)
  allocate(e::w(n))
   select type(w      )
    type is(e)
    w(2)%z1=11 
    allocate(w(2)%e1,source=111_8) 
   end select
       name=w(n) 
       if (name%z1/=11) print *,2828
   k=0
   select type(p=>name)
    type is(e)
      if (p     %e1/=111) print *,2829
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,1228
   k=0
   select type(w      )
    type is(e)
       if (w(2)%z1/=11) print *,3828
       if (w(2)%e1/=111) print *,3829
      k=1
   end select
   if (k/=1) print *,1225
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
     print *,'sngg770r : pass'
     end 

