subroutine s1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type t
     integer(8)::du
     class(z),allocatable::name
  end type
  type(t)::v,vv
  type(e)::w
  class(e),allocatable::ww
  allocate(ww)
    w%z1=11 
    ww%z1=11 
    allocate(w%e1,source=111_8) 
    allocate(ww%e1,source=111_8) 

    allocate(   v%name,source=w)    
       if (v%name%z1/=11) print *,2828
   k=0
   select type(p=>v%name)
    type is(e)
      if (p     %e1/=111) print *,2829
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,1228
       if (w%z1/=11) print *,3828
       if (w%e1/=111) print *,3829

    allocate(   vv%name,source=ww)    
       if (vv%name%z1/=11) print *,28289
   k=0
   select type(p=>vv%name)
    type is(e)
      if (p     %e1/=111) print *,28298
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,12287
       if (w%z1/=11) print *,38287
       if (w%e1/=111) print *,38297
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
call s1()
     print *,'sngg732r : pass'
     end 

