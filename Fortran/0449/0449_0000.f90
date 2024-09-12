module km
integer,parameter::kh=1000
end
module m1
use km
integer(8),parameter::n=4
  type y
    integer(8),allocatable::dummy(:)
  end  type
  type z
    integer(8),allocatable::x1(:)
    integer(8),allocatable::x2(:)
    integer(8),allocatable::x3(:)
    integer(8),allocatable::x4(:)
    integer(8),allocatable::x5(:)
    integer(8),allocatable::x6(:)
    integer(8),allocatable::x7(:)
    integer(8),allocatable::x8(:)
  end type
  type x
    type(y)::y1
    type(z)::z1
  end type
contains
   subroutine s0(xx)
   type(x),intent(out)::xx
    call s1(xx%z1)
   end subroutine
   subroutine s1(a)
   type(z),intent(out)::a
   allocate ( &
     a%x1(n),a%x2(n*n),a%x3(n),a%x4(n*n),a%x5(n),a%x6(n*n),a%x7(n),a%x8(n*n),stat=k)
   if (k/=0) stop 1000
   write(1, '(z16.16, 1x , z16.16)') loc(a%x1),loc(a%x8)
  end subroutine
end
use m1
   type(x)::a
do nn=1,kh
  call s0(a)
end do
call chk(1)
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
