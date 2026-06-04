subroutine s1(n)
  type y
    integer(8)::z2
  end type
  type,extends(y)::ye
     integer(8),allocatable::e3(:)
 end type

  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     integer(8),allocatable::e1(:)
     class(*)  ,allocatable::e2(:)
 end type
  type t
     integer(8)::du
     class(*),allocatable::name(:)
  end type

  type(t)::v,vv
  type(e)::w(n)
  class(*),allocatable::ww(:)
  type (ye)::gv(n)
  integer(8)::q2(2)=2
 
  gv=ye(1,q2)

    w(1)%z1=11 
    w(2)%z1=11 
    allocate(w(1)%e1(2),source=111_8) 
    allocate(w(1)%e2(2),source=gv) 
    allocate(w(2)%e1(2),source=111_8) 
    allocate(w(2)%e2(2),source=gv) 
   
  allocate(e::ww(2))
 select type(ww       )
    type is(e)
    ww(1)%z1=11 
    ww(2)%z1=11 
    allocate(ww(1)%e1(2),source=111_8) 
    allocate(ww(1)%e2(2),source=gv) 
    allocate(ww(2)%e1(2),source=111_8) 
    allocate(ww(2)%e2(2),source=gv) 
end select

    allocate(   v%name,source=w)    
   k=0
   select type(p=>v%name)
    type is(e)
       if (p     (1)%z1/=11) print *,2828
       if (p     (2)%z1/=11) print *,2828
      if (any(p(1)  %e1/=111)) print *,2829
      p(1)  %e1=222
      select type (q=>p(1)  %e2)
       type is(ye)
         if (q(1)%z2/=1) print *,562
         if (q(2)%z2/=1) print *,562
         if (any(q(1)%e3/=2)) print *,563
         if (any(q(2)%e3/=2)) print *,563
         q(1) %e3=12
         q(2) %e3=12
      end select
      if (any(p(2)  %e1/=111)) print *,28291
      p(2)  %e1=222
      select type (q=>p(2)  %e2)
       type is(ye)
         if (q(1)%z2/=1) print *,5621
         if (q(2)%z2/=1) print *,5621
         if (any(q(1)%e3/=2)) print *,5631
         if (any(q(2)%e3/=2)) print *,5631
         q(1) %e3=12
         q(2) %e3=12
      k=1
   end select
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
      select type (q=>p(1)  %e2)
       type is(ye)
         if (q(1)%z2/=1) print *,662
         if (any(q(1)%e3/=2)) print *,663
         if (q(2)%z2/=1) print *,662
         if (any(q(2)%e3/=2)) print *,663
         q(1) %e3=12
         q(2) %e3=12
   end select
      if (any(p(2)  %e1/=111)) print *,28298
      p(2)  %e1=222
      select type (q=>p(2)  %e2)
       type is(ye)
         if (q(1)%z2/=1) print *,662
         if (any(q(1)%e3/=2)) print *,663
         q(1) %e3=12
         if (q(2)%z2/=1) print *,662
         if (any(q(2)%e3/=2)) print *,663
         q(2) %e3=12
      k=1
   end select
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
      select type (q=>p(1)  %e2)
       type is(ye)
         if (   (q(1)%z2/=1)) print *,762
         if (any(q(1)%e3/=2)) print *,763
         q(1) %e3=12
         if (   (q(2)%z2/=1)) print *,762
         if (any(q(2)%e3/=2)) print *,763
         q(2) %e3=12
   end select
      select type (q=>p(2)  %e2)
       type is(ye)
         if (   (q(1)%z2/=1)) print *,762
         if (any(q(1)%e3/=2) )print *,763
         q(1) %e3=12
         if (   (q(2)%z2/=1)) print *,762
         if (any(q(2)%e3/=2) )print *,763
         q(2) %e3=12
      k=1
   end select
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
     print *,'sngg754r : pass'
     end 

