 call s1
 print *,'pass'
 end
 module m1
   logical,parameter::t=.true.,f=.false.
   type a1
      integer(1),pointer::a01=>NULL()
      integer(2),pointer::a02=>NULL()
      integer(4),pointer::a03=>NULL()
      integer(8),pointer::a04=>NULL()
      real(4),pointer::a05=>NULL()
      real(8),pointer::a06=>NULL()
      real(16),pointer::a07=>NULL()
      complex(4),pointer::a08=>NULL()
      complex(8),pointer::a09=>NULL()
      complex(16),pointer::a10=>NULL()
      logical(1),pointer::a11=>NULL()
      logical(2),pointer::a12=>NULL()
      logical(4),pointer::a13=>NULL()
      logical(8),pointer::a14=>NULL()
      character*2,pointer::a15=>NULL()
  end type
  type a2
    type(a1)::a21
  end type
  type a3
    type(a1)::a21=a1(null(),null(),null(),null(),null(),null(),&
                     null(),null(),null(),null(),null(),null(),&
                     null(),null(),null())
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
  if (associated(s%a21%a01))write(6,*) "NG"
  if (associated(s%a21%a02))write(6,*) "NG"
  if (associated(s%a21%a03))write(6,*) "NG"
  if (associated(s%a21%a04))write(6,*) "NG"
  if (associated(s%a21%a05))write(6,*) "NG"
  if (associated(s%a21%a06))write(6,*) "NG"
  if (associated(s%a21%a07))write(6,*) "NG"
  if (associated(s%a21%a08))write(6,*) "NG"
  if (associated(s%a21%a09))write(6,*) "NG"
  if (associated(s%a21%a10))write(6,*) "NG"
  if (associated(s%a21%a11))write(6,*) "NG"
  if (associated(s%a21%a12))write(6,*) "NG"
  if (associated(s%a21%a13))write(6,*) "NG"
  if (associated(s%a21%a14))write(6,*) "NG"
  if (associated(s%a21%a15))write(6,*) "NG"
  end subroutine
  subroutine chk2(s)
  type(a2)::s(:,:,:,:,:,:,:)
  if (associated(s(1,1,1,1,1,1,2)%a21%a01))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a02))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a03))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a04))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a05))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a06))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a07))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a08))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a09))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a10))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a11))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a12))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a13))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a14))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a15))write(6,*) "NG"
  end subroutine
  subroutine chk3(s)
  type(a3)::s
  if (associated(s%a21%a01))write(6,*) "NG"
  if (associated(s%a21%a02))write(6,*) "NG"
  if (associated(s%a21%a03))write(6,*) "NG"
  if (associated(s%a21%a04))write(6,*) "NG"
  if (associated(s%a21%a05))write(6,*) "NG"
  if (associated(s%a21%a06))write(6,*) "NG"
  if (associated(s%a21%a07))write(6,*) "NG"
  if (associated(s%a21%a08))write(6,*) "NG"
  if (associated(s%a21%a09))write(6,*) "NG"
  if (associated(s%a21%a10))write(6,*) "NG"
  if (associated(s%a21%a11))write(6,*) "NG"
  if (associated(s%a21%a12))write(6,*) "NG"
  if (associated(s%a21%a13))write(6,*) "NG"
  if (associated(s%a21%a14))write(6,*) "NG"
  if (associated(s%a21%a15))write(6,*) "NG"
  end subroutine
  subroutine chk4(s)
  type(a3)::s(:,:,:,:,:,:,:)
  if (associated(s(1,1,1,1,1,1,2)%a21%a01))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a02))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a03))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a04))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a05))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a06))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a07))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a08))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a09))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a10))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a11))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a12))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a13))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a14))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a15))write(6,*) "NG"
  end subroutine
  subroutine chkx1(s)
  type(a2)::s
  if (associated(s%a21%a01))write(6,*) "NG"
  if (associated(s%a21%a02))write(6,*) "NG"
  if (associated(s%a21%a03))write(6,*) "NG"
  if (associated(s%a21%a04))write(6,*) "NG"
  if (associated(s%a21%a05))write(6,*) "NG"
  if (associated(s%a21%a06))write(6,*) "NG"
  if (associated(s%a21%a07))write(6,*) "NG"
  if (associated(s%a21%a08))write(6,*) "NG"
  if (associated(s%a21%a09))write(6,*) "NG"
  if (associated(s%a21%a10))write(6,*) "NG"
  if (associated(s%a21%a11))write(6,*) "NG"
  if (associated(s%a21%a12))write(6,*) "NG"
  if (associated(s%a21%a13))write(6,*) "NG"
  if (associated(s%a21%a14))write(6,*) "NG"
  if (associated(s%a21%a15))write(6,*) "NG"
  end subroutine
  subroutine chkx2(s)
  type(a2)::s(:,:,:,:,:,:,:)
  if (associated(s(1,1,1,1,1,1,2)%a21%a01))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a02))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a03))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a04))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a05))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a06))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a07))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a08))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a09))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a10))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a11))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a12))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a13))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a14))write(6,*) "NG"
  if (associated(s(1,1,1,1,1,1,2)%a21%a15))write(6,*) "NG"
  end subroutine
end
subroutine s1
use m1
type(a2)::a2v,a2a(1,1,1,1,1,1,2)
type(a3)::a3v,a3a(1,1,1,1,1,1,2)
type(a2)::a2vv=a2(a1(null(),null(),null(),null(),null(),null(),&
                     null(),null(),null(),null(),null(),null(),&
                     null(),null(),null()))
type(a2)::a2aa(1,1,1,1,1,1,2)=a2(a1(null(),null(),null(),null(),null(),null(),&
                          null(),null(),null(),null(),null(),null(),&
                          null(),null(),null()))
call chk1(a2v)
call chk2(a2a)
call chk3(a3v)
call chk4(a3a)
call chkx1(a2vv)
call chkx2(a2aa)
end
