 call s1
 print *,'pass'
 end
 module m1
   logical,parameter::t=.true.,f=.false.
   type a0
     integer(1)::a00
   end type
   type a1
      integer(1)::a01
      integer(2)::a02
      integer(4)::a03
      integer(8)::a04
      real(4)::a05
      real(8)::a06
      real(16)::a07
      complex(4)::a08
      complex(8)::a09
      complex(16)::a10
      logical(1)::a11
      logical(2)::a12
      logical(4)::a13
      logical(8)::a14
      character*2::a15
      type (a0)::a16
      integer ::xxx=1
      integer(1)::b01(1,1,1,1,1,1,2)
      integer(2)::b02(1,1,1,1,1,1,2)
      integer(4)::b03(1,1,1,1,1,1,2)
      integer(8)::b04(1,1,1,1,1,1,2)
      real(4)::b05(1,1,1,1,1,1,2)
      real(8)::b06(1,1,1,1,1,1,2)
      real(16)::b07(1,1,1,1,1,1,2)
      complex(4)::b08(1,1,1,1,1,1,2)
      complex(8)::b09(1,1,1,1,1,1,2)
      complex(16)::b10(1,1,1,1,1,1,2)
      logical(1)::b11(1,1,1,1,1,1,2)
      logical(2)::b12(1,1,1,1,1,1,2)
      logical(4)::b13(1,1,1,1,1,1,2)
      logical(8)::b14(1,1,1,1,1,1,2)
      character*2::b15(1,1,1,1,1,1,2)
      type (a0)::b16(1,1,1,1,1,1,2)
      integer(1),pointer::c01
      integer(2),pointer::c02
      integer(4),pointer::c03
      integer(8),pointer::c04
      real(4),pointer::c05
      real(8),pointer::c06
      real(16),pointer::c07
      complex(4),pointer::c08
      complex(8),pointer::c09
      complex(16),pointer::c10
      logical(1),pointer::c11
      logical(2),pointer::c12
      logical(4),pointer::c13
      logical(8),pointer::c14
      character*2,pointer::c15
      integer(1),pointer,dimension(:,:,:,:,:,:,:)::d01
      integer(2),pointer,dimension(:,:,:,:,:,:,:)::d02
      integer(4),pointer,dimension(:,:,:,:,:,:,:)::d03
      integer(8),pointer,dimension(:,:,:,:,:,:,:)::d04
      real(4),pointer,dimension(:,:,:,:,:,:,:)::d05
      real(8),pointer,dimension(:,:,:,:,:,:,:)::d06
      real(16),pointer,dimension(:,:,:,:,:,:,:)::d07
      complex(4),pointer,dimension(:,:,:,:,:,:,:)::d08
      complex(8),pointer,dimension(:,:,:,:,:,:,:)::d09
      complex(16),pointer,dimension(:,:,:,:,:,:,:)::d10
      logical(1),pointer,dimension(:,:,:,:,:,:,:)::d11
      logical(2),pointer,dimension(:,:,:,:,:,:,:)::d12
      logical(4),pointer,dimension(:,:,:,:,:,:,:)::d13
      logical(8),pointer,dimension(:,:,:,:,:,:,:)::d14
      character*2,pointer,dimension(:,:,:,:,:,:,:)::d15
      integer,dimension(1,1,1,1,1,1,2) ::yyy=reshape((/2,3/),(/1,1,1,1,1,1,2/))
  end type
  type a2
    type(a1)::a21
  end type
 contains
  subroutine chk21(s)
  type(a2)::s
  if (s%a21%xxx/=1)write(6,*) "NG"
  if (any((/s%a21%yyy/)/=(/2,3/)))write(6,*) "NG"
  end subroutine
  subroutine chk22(s)
  type(a2)::s(:,:,:,:,:,:,:)
  if (s(1,1,1,1,1,1,1)%a21%xxx/=1)write(6,*) "NG"
  if (any((/s(1,1,1,1,1,1,1)%a21%yyy/)/=(/2,3/)))write(6,*) "NG"
  if (s(1,1,1,1,1,1,2)%a21%xxx/=1)write(6,*) "NG"
  if (any((/s(1,1,1,1,1,1,2)%a21%yyy/)/=(/2,3/)))write(6,*) "NG"
  end subroutine
  subroutine chk11(s)
  type(a1)::s
  if (s%xxx/=1)write(6,*) "NG"
  if (any((/s%yyy/)/=(/2,3/)))write(6,*) "NG"
  end subroutine
  subroutine chk12(s)
  type(a1)::s(:,:,:,:,:,:,:)
  if (s(1,1,1,1,1,1,1)%xxx/=1)write(6,*) "NG"
  if (any((/s(1,1,1,1,1,1,1)%yyy/)/=(/2,3/)))write(6,*) "NG"
  if (s(1,1,1,1,1,1,2)%xxx/=1)write(6,*) "NG"
  if (any((/s(1,1,1,1,1,1,2)%yyy/)/=(/2,3/)))write(6,*) "NG"
  end subroutine
end
subroutine s1
use m1
type(a1)::a1v,a1a(1,1,1,1,1,1,2)
type(a2)::a2v,a2a(1,1,1,1,1,1,2)
call chk11(a1v)
call chk12(a1a)
call chk21(a2v)
call chk22(a2a)
end
