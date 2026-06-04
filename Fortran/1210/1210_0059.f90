subroutine s1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1
 end type
  type t
     integer(8)::du
     class(*),allocatable::name
  end type
  type(t)::v,vv
  type(e)::w
  class(*),allocatable::ww
    w%z1=11 
    allocate(w%e1,source=111_8) 
  allocate(e::ww)
   select type(ww       )
    type is(e)
    ww%z1=11
    allocate(ww%e1,source=111_8)
   end select

    allocate(   v%name, vv%name,source=ww)    
   k=0
   select type(p=>v%name)
    type is(e)
       if (p     %z1/=11) print *,2828
      if (p     %e1/=111) print *,2829
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,1228
       if (w%z1/=11) print *,3828
       if (w%e1/=111) print *,3829

   k=0
   select type(p=>vv%name)
    type is(e)
       if (p      %z1/=11) print *,28289
      if (p     %e1/=111) print *,6666,p     %e1
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,12287
   k=0
   select type(ww       )
    type is(e)
       if (ww%z1/=11) print *,38287
       if (ww%e1/=111) print *,38297
      k=1
   end select
   if (k/=1) print *,122875

   deallocate(v%name,w%e1)

    w%z1=11 
    allocate(w%e1,source=111_8) 
    allocate(   v%name,source=w)    
   k=0
   select type(p=>v%name)
    type is(e)
       if (p     %z1/=11) print *,28285
      if (p     %e1/=111) print *,28295
      p     %e1=222
      k=1
   end select
   if (k/=1) print *,12285
       if (w%z1/=11) print *,38285
       if (w%e1/=111) print *,38295

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
     print *,'sngg751r : pass'
     end 

