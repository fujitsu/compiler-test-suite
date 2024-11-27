 call s1
 print *,'pass'
 end
 module m1
   logical,parameter::t=.true.,f=.false.
   type a1
      integer(1)::a01=1
      integer(2)::a02=2
      integer(4)::a03=3
      integer(8)::a04=4
      real(4)::a05=5
      real(8)::a06=6
      real(16)::a07=7
      complex(4)::a08=(8,8)
      complex(8)::a09=(9,9)
      complex(16)::a10=(10,10)
      logical(1)::a11=t
      logical(2)::a12=t
      logical(4)::a13=t
      logical(8)::a14=t
      character*2::a15='ab'
  end type
  type a2
    type(a1)::a21
  end type
  type a3
    type(a1)::a21=a1(11,12,13,14,15,16,17,(18,18),(19,19),(20,20),&
                     t,t,t,t,'cd')
  end type
  interface chk
    module procedure chk1,chk2,chk3,chk4
  end interface
  interface chkx
    module procedure chkx1,chkx2
  end interface
 contains
  subroutine chk1(s)
  type(a2)::s
  if (s%a21%a01/=1)write(6,*) "NG"
  if (s%a21%a02/=2)write(6,*) "NG"
  if (s%a21%a03/=3)write(6,*) "NG"
  if (s%a21%a04/=4)write(6,*) "NG"
  if (s%a21%a05/=5)write(6,*) "NG"
  if (s%a21%a06/=6)write(6,*) "NG"
  if (s%a21%a07/=7)write(6,*) "NG"
  if (s%a21%a08/=(8,8))write(6,*) "NG"
  if (s%a21%a09/=(9,9))write(6,*) "NG"
  if (s%a21%a10/=(10,10))write(6,*) "NG"
  if (.not.s%a21%a11)write(6,*) "NG"
  if (.not.s%a21%a12)write(6,*) "NG"
  if (.not.s%a21%a13)write(6,*) "NG"
  if (.not.s%a21%a14)write(6,*) "NG"
  if (s%a21%a15/='ab')write(6,*) "NG"
  end subroutine
  subroutine chk2(s)
  type(a2)::s(:,:,:,:,:,:,:)
  if (any(s%a21%a01/=1))write(6,*) "NG"
  if (any(s%a21%a02/=2))write(6,*) "NG"
  if (any(s%a21%a03/=3))write(6,*) "NG"
  if (any(s%a21%a04/=4))write(6,*) "NG"
  if (any(s%a21%a05/=5))write(6,*) "NG"
  if (any(s%a21%a06/=6))write(6,*) "NG"
  if (any(s%a21%a07/=7))write(6,*) "NG"
  if (any(s%a21%a08/=(8,8)))write(6,*) "NG"
  if (any(s%a21%a09/=(9,9)))write(6,*) "NG"
  if (any(s%a21%a10/=(10,10)))write(6,*) "NG"
  if (.not.all(s%a21%a11))write(6,*) "NG"
  if (.not.all(s%a21%a12))write(6,*) "NG"
  if (.not.all(s%a21%a13))write(6,*) "NG"
  if (.not.all(s%a21%a14))write(6,*) "NG"
  if (any(s%a21%a15/='ab'))write(6,*) "NG"
  end subroutine
  subroutine chk3(s)
  type(a3)::s
  if (s%a21%a01/=11)write(6,*) "NG"
  if (s%a21%a02/=12)write(6,*) "NG"
  if (s%a21%a03/=13)write(6,*) "NG"
  if (s%a21%a04/=14)write(6,*) "NG"
  if (s%a21%a05/=15)write(6,*) "NG"
  if (s%a21%a06/=16)write(6,*) "NG"
  if (s%a21%a07/=17)write(6,*) "NG"
  if (s%a21%a08/=(18,18))write(6,*) "NG"
  if (s%a21%a09/=(19,19))write(6,*) "NG"
  if (s%a21%a10/=(20,20))write(6,*) "NG"
  if (.not.s%a21%a11)write(6,*) "NG"
  if (.not.s%a21%a12)write(6,*) "NG"
  if (.not.s%a21%a13)write(6,*) "NG"
  if (.not.s%a21%a14)write(6,*) "NG"
  if (s%a21%a15/='cd')write(6,*) "NG"
  end subroutine
  subroutine chk4(s)
  type(a3)::s(:,:,:,:,:,:,:)
  if (any(s%a21%a01/=11))write(6,*) "NG"
  if (any(s%a21%a02/=12))write(6,*) "NG"
  if (any(s%a21%a03/=13))write(6,*) "NG"
  if (any(s%a21%a04/=14))write(6,*) "NG"
  if (any(s%a21%a05/=15))write(6,*) "NG"
  if (any(s%a21%a06/=16))write(6,*) "NG"
  if (any(s%a21%a07/=17))write(6,*) "NG"
  if (any(s%a21%a08/=(18,18)))write(6,*) "NG"
  if (any(s%a21%a09/=(19,19)))write(6,*) "NG"
  if (any(s%a21%a10/=(20,20)))write(6,*) "NG"
  if (.not.all(s%a21%a11))write(6,*) "NG"
  if (.not.all(s%a21%a12))write(6,*) "NG"
  if (.not.all(s%a21%a13))write(6,*) "NG"
  if (.not.all(s%a21%a14))write(6,*) "NG"
  if (any(s%a21%a15/='cd'))write(6,*) "NG"
  end subroutine
  subroutine chkx1(s)
  type(a2)::s
  if (s%a21%a01/=11)write(6,*) "NG"
  if (s%a21%a02/=12)write(6,*) "NG"
  if (s%a21%a03/=13)write(6,*) "NG"
  if (s%a21%a04/=14)write(6,*) "NG"
  if (s%a21%a05/=15)write(6,*) "NG"
  if (s%a21%a06/=16)write(6,*) "NG"
  if (s%a21%a07/=17)write(6,*) "NG"
  if (s%a21%a08/=(18,18))write(6,*) "NG"
  if (s%a21%a09/=(19,19))write(6,*) "NG"
  if (s%a21%a10/=(20,20))write(6,*) "NG"
  if (.not.s%a21%a11)write(6,*) "NG"
  if (.not.s%a21%a12)write(6,*) "NG"
  if (.not.s%a21%a13)write(6,*) "NG"
  if (.not.s%a21%a14)write(6,*) "NG"
  if (s%a21%a15/='cd')write(6,*) "NG"
  end subroutine
  subroutine chkx2(s)
  type(a2)::s(:,:,:,:,:,:,:)
  if (any(s%a21%a01/=11))write(6,*) "NG"
  if (any(s%a21%a02/=12))write(6,*) "NG"
  if (any(s%a21%a03/=13))write(6,*) "NG"
  if (any(s%a21%a04/=14))write(6,*) "NG"
  if (any(s%a21%a05/=15))write(6,*) "NG"
  if (any(s%a21%a06/=16))write(6,*) "NG"
  if (any(s%a21%a07/=17))write(6,*) "NG"
  if (any(s%a21%a08/=(18,18)))write(6,*) "NG"
  if (any(s%a21%a09/=(19,19)))write(6,*) "NG"
  if (any(s%a21%a10/=(20,20)))write(6,*) "NG"
  if (.not.all(s%a21%a11))write(6,*) "NG"
  if (.not.all(s%a21%a12))write(6,*) "NG"
  if (.not.all(s%a21%a13))write(6,*) "NG"
  if (.not.all(s%a21%a14))write(6,*) "NG"
  if (any(s%a21%a15/='cd'))write(6,*) "NG"
  end subroutine
end
subroutine s1
use m1
type(a2)::a2v,a2a(1,1,1,1,1,1,2)
type(a3)::a3v,a3a(1,1,1,1,1,1,2)
type(a2)::a2vv=a2(a1(11,12,13,14,15,16,17,(18,18),(19,19),(20,20),&
                     t,t,t,t,'cd'))
type(a2)::a2aa(1,1,1,1,1,1,2)=a2(a1(11,12,13,14,15,16,17,&
         (18,18),(19,19),(20,20), t,t,t,t,'cd'))
call chk(a2v)
call chk(a2a)
call chk(a3v)
call chk(a3a)
call chkx(a2vv)
call chkx(a2aa)
end
