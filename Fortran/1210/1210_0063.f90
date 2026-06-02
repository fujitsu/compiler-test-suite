subroutine s1(n)
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1(:)
 end type
  type t
     integer(8)::du
     class(*),allocatable::name(:)
  end type
  type(t)::v,vv
  type(e)::w(n)
  class(*),allocatable::ww(:)
    w(1)%z1=11 
    w(2)%z1=11 
    allocate(w(1)%e1(2),source=111_8) 
    allocate(w(2)%e1(2),source=111_8) 
  allocate(e::ww(2))
select type(ww       )
    type is(e)
    ww(1)%z1=11 
    ww(2)%z1=11 
    allocate(ww(1)%e1(2),source=111_8) 
    allocate(ww(2)%e1(2),source=111_8) 
end select

    allocate(   v%name,source=w)    
   k=0
   select type(p=>v%name)
    type is(e)
       if (p     (1)%z1/=11) print *,2828
       if (p     (2)%z1/=11) print *,2828
      if (any(p(1)  %e1/=111)) print *,2829
      if (any(p(2)  %e1/=111)) print *,2829
      p(1)  %e1=222
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,1228
       if (w(1)%z1/=11) print *,3828
       if (any(w(1)%e1/=111)) print *,3829
       if (w(2)%z1/=11) print *,3828
       if (any(w(2)%e1/=111)) print *,3829

    allocate(   vv%name,source=ww)    
   k=0
   select type(p=>vv%name)
    type is(e)
       if (p      (1)%z1/=11) print *,28289
       if (p      (2)%z1/=11) print *,28289
      if (any(p(1)  %e1/=111)) print *,28298
      p(1)  %e1=222
      if (any(p(2)  %e1/=111)) print *,28298
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,12287
  k=0
   select type(ww       )
    type is(e)
       if (ww(1)%z1/=11) print *,38287
       if (any(ww(1)%e1/=111)) print *,38297
       if (ww(2)%z1/=11) print *,38287
       if (any(ww(2)%e1/=111)) print *,38297
      k=1
   end select
   if (k/=1) print *,122875

   deallocate(v%name,w(1)%e1,w(2)%e1)

    w%z1=11 
    allocate(w(1)%e1(2),source=111_8) 
    allocate(w(2)%e1(2),source=111_8) 
    allocate(   v%name,source=w)    
   k=0
   select type(p=>v%name)
    type is(e)
       if (p     (1)%z1/=11) print *,28285
       if (p     (2)%z1/=11) print *,28285
      if (any(p(1)  %e1/=111)) print *,28295
      if (any(p(2)  %e1/=111)) print *,28295
      p(1)  %e1=222
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,12285
       if (w(1)%z1/=11) print *,38285
       if (any(w(1)%e1/=111)) print *,38295
       if (w(2)%z1/=11) print *,38285
       if (any(w(2)%e1/=111)) print *,38295

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
     print *,'sngg755r : pass'
     end 

