 call s1
 print *,'pass'
 end
 module m1
    type d
      integer :: c1 = 5
    end type d
    interface chk
      module procedure chk1,chk2
    end interface 
 contains
  subroutine chk1(x)
    type(d)::x(:,:)
    if (any(x%c1/=1))write(6,*) "NG"
  end subroutine
  subroutine chk2(x)
    type(d)::x
    if (   (x%c1/=1))write(6,*) "NG"
  end subroutine
  subroutine aa1(arg,x)
    type(d),intent(out),dimension(:,:) :: arg
    type(d)::x(:,:)
    call chk(x)
  end subroutine 
  subroutine as1(arg,x)
    type(d),intent(out):: arg
    type(d)::x
    call chk(x)
  end subroutine 
  subroutine aa2(arg,x)
    type(d),intent(out),dimension(:,:) :: arg
    type(d)::x(:,:)
    entry    aa3(arg,x)
    call chk(x)
  end subroutine
  subroutine as2(arg,x)
    entry    as3(arg,x)
    type(d),intent(out):: arg
    type(d)::x
    call chk(x)
  end subroutine
  subroutine aa4(arg1,x)
    type(d),intent(out),dimension(:,:) :: arg1,arg2
    entry    aa5(arg2,x)
    type(d)::x(:,:)
    call chk(x)
  end subroutine
  subroutine as4(arg1,x)
    type(d)::x
    entry    as5(arg2,x)
    type(d),intent(out):: arg1,arg2
    call chk(x)
  end subroutine
  subroutine aa6(arg,x)
    type(d),intent(out),dimension(:,:) :: arg
    type(d)::x(:,:)
    optional::arg
    call chk(x)
  end subroutine 
  subroutine as6(arg,x)
    type(d),intent(out):: arg
    type(d)::x
    optional::arg
    call chk(x)
  end subroutine 
  subroutine aa7(arg,x)
    type(d),intent(out),dimension(:,:) :: arg
    type(d)::x(:,:)
    optional::arg
    entry    aa8(arg,x)
    call chk(x)
  end subroutine
  subroutine as7(arg,x)
    entry    as8(arg,x)
    optional::arg
    type(d),intent(out):: arg
    type(d)::x
    call chk(x)
  end subroutine
  subroutine aa9(arg1,x)
    type(d),intent(out),dimension(:,:) :: arg1,arg2
    entry    aaa(arg2,x)
    optional::arg1,arg2
    type(d)::x(:,:)
    call chk(x)
  end subroutine
  subroutine as9(arg1,x)
    type(d)::x
    entry    asa(arg2,x)
    type(d),intent(out):: arg1,arg2
    optional::arg1,arg2
    call chk(x)
  end subroutine
end
 subroutine s1
 use m1
    type(d),dimension(2,3)::a1,xx
!
 xx=d(1)
 do i=1,3
    a1 = d(1)
    call aa1(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    if (any(xx%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call as1(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aa2(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aa3(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call as2(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call as3(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aa4(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aa5(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    call as4(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call as5(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
!
    a1 = d(1)
    call aa6(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call as6(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aa7(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aa8(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call as7(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call as8(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aa9(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call aaa(a1,xx)
    if (any(a1%c1/=5))write(6,*) "NG"
    call as9(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call asa(a1(2,3),xx(2,3))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
!
    a1 = d(1)
    call aa6(x=xx)
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call as6(x=xx(2,3))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call aa7(x=xx)
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call aa8(x=xx)
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call as7(x=xx(2,3))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call as8(x=xx(2,3))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call aa9(x=xx)
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call aaa(x=xx)
    if (any(a1%c1/=1))write(6,*) "NG"
    call as9(x=xx(2,3))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call asa(x=xx(2,3))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
!
    if (any(xx%c1/=1))write(6,*) "NG"
 end do
end
