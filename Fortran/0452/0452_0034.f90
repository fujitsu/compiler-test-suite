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
   elemental impure subroutine s0(xx,yy,zz)
   type(x),intent(out)::xx,yy,zz
    call s1(xx,yy,zz)
   end subroutine
   elemental impure subroutine s1(a1,a2,a3)
   type(x),intent(out)::a1,a2,a3
   if (a1%z1%y1/=1) print *,801
   if (a1%z1%y2/=1) print *,801
   if (a1%y1%y3/=1) print *,801
   if (a1%y1%y4/=1) print *,801
   if (a1%z1%ww%y5/=1) print *,801
   if (a1%z1%ww%y6/=1) print *,801
   allocate ( &
     a1%z1%x1(n),a1%z1%x2(n*n),a1%y1%x3(n),a1%y1%x4(n*n),a1%z1%ww%x5(n),a1%z1%ww%x6(n*n),stat=k)
   if (k/=0) stop 1000
   write(90,'(z16.16)') loc(a1%z1%x1)
   allocate ( &
     a2%z1%x1(n),a2%z1%x2(n*n),a2%y1%x3(n),a2%y1%x4(n*n),a2%z1%ww%x5(n),a2%z1%ww%x6(n*n),stat=k)
   if (k/=0) stop 1000
   write(91,'(z16.16)') loc(a2%z1%x1)
   allocate ( &
     a3%z1%x1(n),a3%z1%x2(n*n),a3%y1%x3(n),a3%y1%x4(n*n),a3%z1%ww%x5(n),a3%z1%ww%x6(n*n),stat=k)
   if (k/=0) stop 1000
   write(92,'(z16.16)') loc(a3%z1%x1)
  end subroutine
end
use m1
   type(x)::a1(3),a2(3),a3(3)
do nn=1,10000
  call s0(a1,a2,a3)
end do
call chk(90)
call chk(91)
call chk(92)
print *,'pass'
end
subroutine chk(n)
character(16):: c,cc(100)
k=0
rewind n
do nn=1,10000
 read(n,'(a)') c
 do kk=1,k
   if (cc(kk)==c) then
     goto 2
   endif
 end do
 k=k+1
 if (k>10000) then
    print *,'Eroor memory leak ',n
    return
 endif
 cc(k)=c
2 continue
end do
end
