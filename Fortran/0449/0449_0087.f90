module m1
integer(8),parameter::n=4
  type w
    integer(8),allocatable::dummy(:)
    integer::y5=1
    integer(8),allocatable::x5(:)
    integer::y6=1
    integer(8),allocatable::x6(:)
  end  type
  type y
    integer(8),allocatable::dummy(:)
    integer::y3=1
    integer(8),allocatable::x3(:)
    integer::y4=1
    integer(8),allocatable::x4(:)
  end  type
  type z
    integer::y1=1
    integer(8),allocatable::x1(:)
    type(w):: ww
    integer::y2=1
    integer(8),allocatable::x2(:)
  end type
  type x
    type(y)::y1
    type(z)::z1
  end type
contains
   subroutine s0(xx)
   type(x),intent(out)::xx(:)
    call s1(xx)
   end subroutine
    subroutine s1(a)
   type(x),intent(out)::a(:)
   if (a(3)%z1%y1/=1) print *,801
   if (a(3)%z1%y2/=1) print *,801
   if (a(3)%y1%y3/=1) print *,801
   if (a(3)%y1%y4/=1) print *,801
   if (a(3)%z1%ww%y5/=1) print *,801
   if (a(3)%z1%ww%y6/=1) print *,801
   allocate ( &
     a(3)%z1%x1(n),a(3)%z1%x2(n*n),a(3)%y1%x3(n),a(3)%y1%x4(n*n),a(3)%z1%ww%x5(n),a(3)%z1%ww%x6(n*n),stat=k)
   if (k/=0) stop 1000
   write(192,'(z16.16)') loc(a(3)%z1%x1)
  end subroutine
end
use m1
   type(x)::a(3)
do nn=1,10000
  call s0(a)
end do
call chk
print *,'pass'
end
subroutine chk
character(16):: c,cc(100)
k=0
rewind 192
do nn=1,10000
 read(192,'(a)') c
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
