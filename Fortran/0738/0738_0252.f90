type z01
  character(5),allocatable,dimension(:)::ch01
  integer(4),allocatable,dimension(:)::z01a
  complex(4),allocatable,dimension(:)::co01
end type
type z02
  type(z01),allocatable,dimension(:)::z02a
end type
type z03
  type(z02)            ,dimension(1)::z03a
end type
type z04
  type(z03),allocatable,dimension(:)::z04a
end type
type z05
  type(z04),allocatable,dimension(:)::z05a
end type
type z06
  type(z05)            ,dimension(1)::z06a
end type
type z07
  type(z06),allocatable,dimension(:)::z07a
end type
type z08
  type(z07),allocatable,dimension(:)::z08a
end type
type z09
  type(z08)            ,dimension(1)::z09a
end type
type z10
  type(z09),allocatable,dimension(:)::z10a
end type

type (z10),allocatable,dimension(:)::a,b

character(5),allocatable,dimension(:)::x1ch,x2ch
integer(8),allocatable,dimension(:)::x1i8,x2i8
complex(16),allocatable,dimension(:)::x1c16,x2c16

  allocate(a(2))
  allocate(b(2))

  allocate(a(1)%z10a(1))
  allocate(a(1)%z10a(1)%z09a(1)%z08a(1))
  allocate(a(1)%z10a(1)%z09a(1)%z08a(1)%z07a(1))
  allocate(a(1)%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%z05a(1))
  allocate(a(1)%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%z05a(1)%z04a(1))
  allocate(a(1)%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%z05a(1)%z04a(1)% &
                z03a(1)%z02a(1))
  allocate(a(1)%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%z05a(1)%z04a(1)% &
                z03a(1)%z02a(1)%z01a(1))

  a(1) = z10((/z09((/z08((/z07((/z06((/z05((/z04((/z03((/z02((/ &
         (/z01((/'ABC'/),(/1,2,3,4,5/),(/(1.0,2.0),(3.0,4.0)/)), &
           z01((/'abc'/),(/1,2,3,4/),(/(5.0,6.0),(7.0,8.0)/))/)  &
         /))/))/))/))/))/))/))/))/))

  call sub0(a(1),5,4)
  call sub1(a(1))

  a(2)=a(1)

  call subd(a(1))
  call sub0(a(2),5,4)
  call sub1(a(2))
  call subd(a(2))

  allocate(x1ch(1),x2ch(1),x1i8(5),x2i8(4),x1c16(2),x2c16(2))
  x1ch=(/'ABC  '/)               ; x2ch=(/'abc  '/)
  x1i8=(/1,2,3,4,5/)             ; x2i8=(/1,2,3,4/)
  x1c16=(/(1.0,2.0),(3.0,4.0)/)  ; x2c16=(/(5.0,6.0),(7.0,8.0)/)

  a(2) = z10((/z09((/z08((/z07((/z06((/z05((/z04((/z03((/z02((/ &
         (/z01(x1ch,x1i8,x1c16),   &
           z01(x2ch,x2i8,x2c16)/)  &
         /))/))/))/))/))/))/))/))/))

  b(1)=a(2)

  call sub0(b(1),5,4)
  call sub1(b(1))
  call subd(b(1))
  call sub0(a(2),5,4)
  call sub1(a(2))
  call subd(a(2))

  b(1) = z10((/z09((/z08((/z07((/z06((/z05((/z04((/z03((/z02((/ &
         (/(z01(x1ch,x1i8,x1c16),i=1,2)/)   &
         /))/))/))/))/))/))/))/))/))

  b(2) = z10((/z09((/z08((/z07((/z06((/z05((/z04((/z03((/z02((/ &
         (/(z01(x2ch,x2i8,x2c16),i=1,2)/)   &
         /))/))/))/))/))/))/))/))/))

  deallocate(x1ch,x2ch,x1i8,x2i8,x1c16,x2c16)

  call sub0(b(1),5,5)
  call sub2(b(1))
  call sub0(b(2),4,4)
  call sub3(b(2))

  a(2:1:-1)=b(1:2:1)

  call sub0(a(1),4,4)
  call sub3(a(1))
  call sub0(a(2),5,5)
  call sub2(a(2))

  print *,'pass'
 contains

  subroutine sub0(z,size1,size2)
    type(z10)::z
    integer(4)::size1,size2
    intent(in)::z,size1,size2
    if (.not.allocated( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                          z05a(1)%z04a(1)%z03a(1)%z02a(1)%z01a )   &
        ) write(6,*) "NG"
    if (.not.allocated( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                          z05a(1)%z04a(1)%z03a(1)%z02a(2)%z01a )   &
        ) write(6,*) "NG"
    if (.not.allocated( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                          z05a(1)%z04a(1)%z03a(1)%z02a(1)%ch01 )   &
        ) write(6,*) "NG"
    if (.not.allocated( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                          z05a(1)%z04a(1)%z03a(1)%z02a(2)%ch01 )   &
        ) write(6,*) "NG"
    if (.not.allocated( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                          z05a(1)%z04a(1)%z03a(1)%z02a(1)%co01 )   &
        ) write(6,*) "NG"
    if (.not.allocated( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                          z05a(1)%z04a(1)%z03a(1)%z02a(2)%co01 )   &
        ) write(6,*) "NG"

    if (size( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                z05a(1)%z04a(1)%z03a(1)%z02a(1)%z01a )   &
        /=size1 ) write(6,*) "NG"
    if (size( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                z05a(1)%z04a(1)%z03a(1)%z02a(2)%z01a )   &
        /=size2 ) write(6,*) "NG"

    if (any(lbound( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                      z05a(1)%z04a(1)%z03a(1)%z02a(1)%z01a )   &
        /=(/1/))) write(6,*) "NG"
    if (any(lbound( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                      z05a(1)%z04a(1)%z03a(1)%z02a(2)%z01a )   &
        /=(/1/))) write(6,*) "NG"

    if (any(ubound( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                      z05a(1)%z04a(1)%z03a(1)%z02a(1)%z01a )   &
        /=(/size1/))) write(6,*) "NG"
    if (any(ubound( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)% &
                      z05a(1)%z04a(1)%z03a(1)%z02a(2)%z01a )   &
        /=(/size2/))) write(6,*) "NG"

  end subroutine 

  subroutine sub1(z)
    type(z10)::z
    intent(in)::z
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(1)%ch01      &
        /=(/'ABC  '/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(2)%ch01      &
        /=(/'abc  '/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(1)%z01a      &
        /=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(2)%z01a      &
        /=(/1,2,3,4/))) write(6,*) "NG"
    if (any(abs( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(1)%co01      &
        -(/(1.0,2.0),(3.0,4.0)/))>=1.0e-16)) write(6,*) "NG"
    if (any(abs( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(2)%co01      &
        -(/(5.0,6.0),(7.0,8.0)/))>=1.0e-16)) write(6,*) "NG"

  end subroutine 

  subroutine sub2(z)
    type(z10)::z
    intent(in)::z
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(1)%ch01      &
        /=(/'ABC  '/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(2)%ch01      &
        /=(/'ABC  '/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(1)%z01a      &
        /=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(2)%z01a      &
        /=(/1,2,3,4,5/))) write(6,*) "NG"
    if (any(abs( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(1)%co01      &
        -(/(1.0,2.0),(3.0,4.0)/))>=1.0e-16)) write(6,*) "NG"
    if (any(abs( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(2)%co01      &
        -(/(1.0,2.0),(3.0,4.0)/))>=1.0e-16)) write(6,*) "NG"
  end subroutine 

  subroutine sub3(z)
    type(z10)::z
    intent(in)::z
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(1)%ch01      &
        /=(/'abc  '/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(2)%ch01      &
        /=(/'abc  '/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(1)%z01a      &
        /=(/1,2,3,4/))) write(6,*) "NG"
    if (any( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
               z05a(1)%z04a(1)%z03a(1)%z02a(2)%z01a      &
        /=(/1,2,3,4/))) write(6,*) "NG"
    if (any(abs( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(1)%co01      &
        -(/(5.0,6.0),(7.0,8.0)/))>=1.0e-16)) write(6,*) "NG"
    if (any(abs( z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(2)%co01      &
        -(/(5.0,6.0),(7.0,8.0)/))>=1.0e-16)) write(6,*) "NG"
  end subroutine 

  subroutine subd(z)
  type(z10)::z
    do k=1,2
      deallocate(z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(k)%ch01)
      deallocate(z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(k)%z01a)
      deallocate(z%z10a(1)%z09a(1)%z08a(1)%z07a(1)%z06a(1)%  &
                   z05a(1)%z04a(1)%z03a(1)%z02a(k)%co01)
    end do
  end subroutine
end
