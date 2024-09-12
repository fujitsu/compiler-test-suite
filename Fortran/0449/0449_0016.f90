module m1
integer(8),parameter::n=4
  type y
    integer(8),allocatable::dummy(:)
  end  type
  type z
    integer::x0=0
    integer(8),allocatable::x1(:)
    integer(8),allocatable::x2(:)
    integer(8),allocatable::x3(:)
    integer(8),allocatable::x4(:)
    integer(8),allocatable::x5(:)
    integer(8),allocatable::x6(:)
    integer(8),allocatable::x7(:)
    integer(8),allocatable::x8(:)
  end type
contains
   subroutine s1(a)
   type(z),allocatable,intent(out)::a
allocate(a)
   allocate ( &
     a%x1(n),a%x2(n*n),a%x3(n),a%x4(n*n),a%x5(n),a%x6(n*n),a%x7(n),a%x8(n*n),stat=k)
   if (k/=0) stop 1000
   write(1,'(z16.16)') loc(a%x1)
  end subroutine
end
use m1
   type(z),allocatable::a
allocate(a)
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
