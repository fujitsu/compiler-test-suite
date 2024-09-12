module m1
integer(8),parameter::n=4
  type y
    integer(8),allocatable::dummy(:)
  end  type
  type z
    integer::y1=1
    integer(8),allocatable::x1(:)
    integer::y2=1
    integer(8),allocatable::x2(:)
    integer::y3=1
    integer(8),allocatable::x3(:)
    integer::y4=1
    integer(8),allocatable::x4(:)
    integer::y5=1
    integer(8),allocatable::x5(:)
    integer::y6=1
    integer(8),allocatable::x6(:)
    integer::y7=1
    integer(8),allocatable::x7(:)
    integer::y8=1
    integer(8),allocatable::x8(:)
    integer::y9=1
  end type
  type x
    type(y)::y1
    type(z)::z1
  end type
contains
   subroutine s1(a)
   type(z),intent(out)::a(:)
   if (a(3)%y1/=1) print *,801
   if (a(3)%y2/=1) print *,801
   if (a(3)%y3/=1) print *,801
   if (a(3)%y4/=1) print *,801
   if (a(3)%y5/=1) print *,801
   if (a(3)%y6/=1) print *,801
   if (a(3)%y7/=1) print *,801
   if (a(3)%y8/=1) print *,801
   if (a(3)%y9/=1) print *,801
   allocate ( &
     a(3)%x1(n),a(3)%x2(n*n),a(3)%x3(n),a(3)%x4(n*n),a(3)%x5(n),a(3)%x6(n*n),a(3)%x7(n),a(3)%x8(n*n),stat=k)
   if (k/=0) stop 1000
   write(1,'(z16.16)') loc(a(3)%x1)
  end subroutine
end
use m1
   type(z),allocatable::a(:)
allocate(a(3))
do nn=1,10000
  call s1(a)
end do
call chk
print *,'pass'
end
subroutine chk
character(16):: c,cc(100)
k=0
rewind 1
do nn=1,10000
 read(1,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>100) then 
    print *,'Eroor memory leak '
    return 
 endif
 cc(k)=c
2 continue
end do
end
