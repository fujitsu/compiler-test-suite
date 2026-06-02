module m1
  type z
    integer(8)::z1
  end type
  type,extends(z)::e
     character(:),allocatable::e1(:)
 end type
 character(*),parameter::c1=repeat('1',1000)
 character(*),parameter::c2=repeat('2',1000)
contains
subroutine s1(w)
     class(z),allocatable::name(:)
  class(e)::w(:)
    w%z1=11 
    allocate(w(1)%e1,source=[c1,c1]) 
    allocate(w(2)%e1,source=[c1,c1]) 
       name=w    
       if (name(1)%z1/=11) print *,2828
       if (name(2)%z1/=11) print *,2828
   k=0
   select type(p=>name)
    type is(e)
    write(2001,'(z16.16)') loc(p(1)   %e1)
      if (p(1)     %e1(1)/=c1 ) print *,2829
      if (p(1)     %e1(2)/=c1 ) print *,2829
      p(1)     %e1=c2 
      if (p(2)     %e1(1)/=c1 ) print *,2829
      if (p(2)     %e1(2)/=c1 ) print *,2829
      p(2)     %e1=c2 
      k=1
   end select
   if (k/=1) print *,1228
       if (any(w%z1/=11)) print *,3828
       if (w(1)%e1(1)/=c1 ) print *,3829
       if (w(1)%e1(2)/=c1 ) print *,3829
       deallocate(w(1)%e1 )
       if (w(2)%e1(1)/=c1 ) print *,3829
       if (w(2)%e1(2)/=c1 ) print *,3829
       deallocate(w(2)%e1 )
end
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
use m1
integer::k=-1
  class(e),allocatable::w(:)
allocate(w(2))
do n=1,30
call s2(k)
call s1(w)
end do
!call chk(2001)
     print *,'sngg812r : pass'
     end 
 subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end

