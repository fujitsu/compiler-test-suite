subroutine s1(n)
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
     class(*),allocatable::name
type q
  type(e)::w(2)
end type
type(q)::r
    r%w%z1=11 
    allocate(r%w(2)%e1,source=111_8) 
       allocate(name,source=r%w(n)) 
   k=0
   select type(p=>name)
    type is(e)
       if (p   %z1/=11) print *,2828
      if (p     %e1/=111) print *,2829
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,1228
       if (r%w(2)%z1/=11) print *,3828
       if (r%w(2)%e1/=111) print *,3829
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
     print *,'sngg863r : pass'
     end 

