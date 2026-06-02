subroutine s1(n)
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1(:)
 end type
  type t
     integer(8)::du
     class(z),allocatable::name(:)
  end type
  type(t)::v,vv
  type(e)::w(n)
  class(e),allocatable::ww(:)
    w(1)%z1=11 
    w(2)%z1=11 
    allocate(w(1)%e1(2),source=111_8) 
    allocate(w(2)%e1(2),source=111_8) 
  allocate(ww(2))
    ww(1)%z1=11 
    ww(2)%z1=11 
    allocate(ww(1)%e1(2),source=111_8) 
    allocate(ww(2)%e1(2),source=111_8) 

    allocate(   v%name,source=w)    
       if (v%name(1)%z1/=11) print *,2828
       if (v%name(2)%z1/=11) print *,2828
   k=0
   select type(p=>v%name)
    type is(e)
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
       if (vv%name(1)%z1/=11) print *,28289
       if (vv%name(2)%z1/=11) print *,28289
   k=0
   select type(p=>vv%name)
    type is(e)
      if (any(p(1)  %e1/=111)) print *,28298
      p(1)  %e1=222
      if (any(p(2)  %e1/=111)) print *,28298
      p(2)  %e1=222
      k=1
   end select
   if (k/=1) print *,12287
       if (ww(1)%z1/=11) print *,38287
       if (any(ww(1)%e1/=111)) print *,38297
       if (ww(2)%z1/=11) print *,38287
       if (any(ww(2)%e1/=111)) print *,38297

   deallocate(v%name,w(1)%e1,w(2)%e1)

    w%z1=11 
    allocate(w(1)%e1(2),source=111_8) 
    allocate(w(2)%e1(2),source=111_8) 
    allocate(   v%name,source=w)    
       if (v%name(1)%z1/=11) print *,28285
       if (v%name(2)%z1/=11) print *,28285
   k=0
   select type(p=>v%name)
    type is(e)
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
     print *,'sngg741r : pass'
     end 

