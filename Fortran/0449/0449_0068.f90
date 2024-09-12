module km
integer,parameter::kh=10
end
module m1
use km
integer(8),parameter::n=4
  type r
    integer(8)::d=1
    contains
     final:: rf
  end  type
  type z
    integer::x0
    class(r),allocatable::x1(:)
    type(r),allocatable::x2(:)
    contains
     final:: zf
  end type
contains
   subroutine rf(d)
    type(r)::d(:)
      write(30,*)3001
   end subroutine
   subroutine zf(d)
    type(z)::d(:)
      write(40,*)4001
   end subroutine
    subroutine s1(a)
   type(z),intent(out)::a(:)
   k=0
   select type(p=>a(3)%x1)
     type is(r)
      k=1
   end select
   if (k/=1) print *,711
   allocate ( r:: a(3)%x1(n),stat=k)
   if (k/=0) stop 1000
   allocate ( a(3)%x2(n),stat=k)
   if (k/=0) stop 1002
   write(1,'(z16.16)') loc(a(3)%x1)
   write(2,'(z16.16)') loc(a(3)%x2)
   select type(p=>a(3)%x1)
     type is(r)
      k=1
   end select
   if (k/=1) print *,701
   end subroutine
end
use m1
   type(z)::a(3)
do nn=1,kh
  call s1(a)
end do
call chk(1)
call chk(2)
call chk0(30)
call chk0(40)
print *,'pass'
end
subroutine chk(n)
use km
character(16):: c,cc(100)
k=0
rewind n
do nn=1,kh
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then 
    print *,'Eroor memory leak ',n
    return 
 endif
 cc(k)=c
2 continue
end do
end
subroutine chk0(n)
use km
rewind n  
do nn=1,kh
 read(n ,*) nx
 if (n==40) then
   if (nx/=4001) then 
      print *,'Error 40 ' 
      return 
   endif
 else 
   if (nx/=3001) then 
      print *,'Error 30 ' 
      return 
   endif
 endif
end do
end
