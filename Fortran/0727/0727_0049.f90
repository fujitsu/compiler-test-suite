 call s1
 print *,'pass'
 end
 module m1
    implicit type(d)(a)
    type d
      integer :: c1 = 5
    end type d
    interface chk
      module procedure chk1,chk2
    end interface 
    interface cxx
      module procedure cxx1,cxx2
    end interface 
    integer::k2=2,k3=3,k4=4,k5=5
 contains
  pure function kfun2()
  kfun2=2
  end function
  pure function kfun3()
  kfun3=3
  end function
  subroutine gg(a1,a2,a3)
  dimension a1(:,:),a2(:,:),a3(:,:)
    if (any(shape(a1)/=(/2,3/)))write(6,*) "NG"
    if (any(shape(a2)/=(/2,3/)))write(6,*) "NG"
    if (any(shape(a3)/=(/2,3/)))write(6,*) "NG"
    if (any(a1%c1/=5))write(6,*) "NG"
    if (any(a2%c1/=5))write(6,*) "NG"
    if (any(a3%c1/=5))write(6,*) "NG"
    a1=d(1)
    a2=d(1)
    a3=d(1)
  end subroutine
  subroutine cxx1(as)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    if (   (as%c1/=5))write(6,*) "NG"
    call gg(az1,az2,az3)
  end subroutine
  subroutine cxx2(aa)
    dimension aa(2,3)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    if (any(aa%c1/=5))write(6,*) "NG"
    call gg(az1,az2,az3)
  end subroutine
  subroutine chk1(x)
    type(d)::x(2,3)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    if (any(x%c1/=1))write(6,*) "NG"
    if (any(shape(x)/=(/2,3/)))write(6,*) "NG"
    call gg(az1,az2,az3)
  end subroutine
  subroutine chk2(x)
    type(d)::x
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    if (   (x%c1/=1))write(6,*) "NG"
    call gg(az1,az2,az3)
  end subroutine
  function aa1(arg,x) result(ar)
    dimension ar(k4-k2,k5-k2)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    type(d),intent(out),dimension(2,3) :: arg
    type(d)::x(2,3)
    call chk(x)
    call gg(az1,az2,az3)
  end function 
  function as1(arg,x) result(ar)
    type(d),intent(out):: arg
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    type(d)::x
    dimension ar(k4-k2,k5-k2)
    call chk(x)
    call gg(az1,az2,az3)
  end function 
  function aa2(arg,x) result(ar)
    type(d),intent(out),dimension(2,3) :: arg
    type(d)::x(2,3)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    entry    aa3(arg,x) result(ar)
    dimension ar(k4-k2,k5-k2)
    call chk(x)
    call gg(az1,az2,az3)
  end function
  function as2(arg,x)  result(ar)
    entry    as3(arg,x)  result(ar)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    type(d),intent(out):: arg
    type(d)::x
    dimension ar(k4-k2,k5-k2)
    call chk(x)
    call gg(az1,az2,az3)
  end function
  function aa4(arg1,x) result(ar)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    type(d),intent(out),dimension(2,3) :: arg1,arg2
    entry    aa5(arg2,x) result(ar)
    type(d)::x(2,3)
    dimension ar(k4-k2,k5-k2)
    call chk(x)
    call gg(az1,az2,az3)
  end function
  function as4(arg1,x) result(ar)
    type(d)::x
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    entry    as5(arg2,x) result(ar)
    type(d),intent(out):: arg1,arg2
    dimension ar(k4-k2,k5-k2)
    call chk(x)
    call gg(az1,az2,az3)
  end function
  function aa6(arg,x) result(ar)
    dimension ar(k4-k2,k5-k2)
    type(d),intent(out),dimension(2,3) :: arg
    type(d)::x(2,3)
    optional::arg
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    call chk(x)
    call gg(az1,az2,az3)
  end function 
  function as6(arg,x) result(ar)
    dimension ar(k4-k2,k5-k2)
    type(d),intent(out):: arg
    type(d)::x
    optional::arg
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    call chk(x)
    call gg(az1,az2,az3)
  end function 
  function aa7(arg,x) result(ar)
    dimension ar(k4-k2,k5-k2)
    type(d),intent(out),dimension(2,3) :: arg
    type(d)::x(2,3)
    optional::arg
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    entry    aa8(arg,x) result(ar)
    call chk(x)
    call gg(az1,az2,az3)
  end function
  function as7(arg,x) result(ar)
    dimension ar(k4-k2,k5-k2)
    entry    as8(arg,x) result(ar)
    optional::arg
    type(d),intent(out):: arg
    type(d)::x
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    call chk(x)
    call gg(az1,az2,az3)
  end function
  function aa9(arg1,x) result(ar)
    type(d),intent(out),dimension(2,3) :: arg1,arg2
    entry    aaa(arg2,x) result(ar)
    optional::arg1,arg2
    type(d)::x(2,3)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    dimension ar(k4-k2,k5-k2)
    call chk(x)
    call gg(az1,az2,az3)
  end function
  function as9(arg1,x) result(ar)
    type(d)::x
    entry    asa(arg2,x) result(ar)
    type(d),intent(out):: arg1,arg2
    optional::arg1,arg2
    dimension ar(k4-k2,k5-k2)
    dimension az1(2,3),az2(k4-k2,k5-k2),az3(kfun2(),kfun3())
    call chk(x)
    call gg(az1,az2,az3)
  end function
end
 subroutine s1
 use m1
    type(d),dimension(2,3)::a1,xx
!
 xx=d(1)
 do i=1,3
    a1 = d(1)
    call cxx(aa1(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    if (any(xx%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(as1(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa2(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa3(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(as2(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(as3(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa4(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa5(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    call cxx(as4(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(as5(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
!
    a1 = d(1)
    call cxx(aa6(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(as6(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa7(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa8(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(as7(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(as8(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa9(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(aaa(a1,xx))
    if (any(a1%c1/=5))write(6,*) "NG"
    call cxx(as9(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
    a1 = d(1)
    call cxx(asa(a1(2,3),xx(2,3)))
    if (   (a1(2,3)%c1/=5))write(6,*) "NG"
!
    a1 = d(1)
    call cxx(aa6(x=xx))
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(as6(x=xx(2,3)))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa7(x=xx))
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa8(x=xx))
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(as7(x=xx(2,3)))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(as8(x=xx(2,3)))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(aa9(x=xx))
    if (any(a1%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(aaa(x=xx))
    if (any(a1%c1/=1))write(6,*) "NG"
    call cxx(as9(x=xx(2,3)))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
    a1 = d(1)
    call cxx(asa(x=xx(2,3)))
    if (   (a1(2,3)%c1/=1))write(6,*) "NG"
!
    if (any(xx%c1/=1))write(6,*) "NG"
 end do
end
