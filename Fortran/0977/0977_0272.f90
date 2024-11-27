call integer
call real
call complex
call logical
call character
call type
print *,'pass'
contains
subroutine integer
integer(1), allocatable :: ai1(:), bi1(:)
integer(2), allocatable :: ai2(:), bi2(:)
integer(4), allocatable :: ai4(:), bi4(:)
integer(8), allocatable :: ai8(:), bi8(:)
allocate(ai1(3),ai2(3),ai4(3),ai8(3))
ai1 =(/1_1,2_1,3_1/)
ai2 =(/1_2,2_2,3_2/)
ai4 =(/1,2,3/)
ai8 =(/1_8,2_8,3_8/)
call move_alloc(ai1, bi1)
call move_alloc(ai2, bi2)
call move_alloc(ai4, bi4)
call move_alloc(ai8, bi8)
if(allocated(ai1).neqv..false.) print *,'err'
if(allocated(bi1).neqv..true.) print *,'err'
if(any(bi1/=(/1_1,2_1,3_1/))) print *,'err'
if(allocated(ai2).neqv..false.) print *,'err'
if(allocated(bi2).neqv..true.) print *,'err'
if(any(bi2/=(/1_2,2_2,3_2/))) print *,'err'
if(allocated(ai4).neqv..false.) print *,'err'
if(allocated(bi4).neqv..true.) print *,'err'
if(any(bi4/=(/1,2,3/))) print *,'err'
if(allocated(ai8).neqv..false.) print *,'err'
if(allocated(bi8).neqv..true.) print *,'err'
if(any(bi8/=(/1_8,2_8,3_8/))) print *,'err'
end subroutine
subroutine real
real(4), allocatable :: ar(:), br(:)
real(8), allocatable :: ad(:), bd(:)
real(16), allocatable :: aq(:), bq(:)
DOUBLE PRECISION, allocatable :: adp(:), bdp(:)
allocate(ar(3),ad(3),aq(3),adp(3))
ar =(/1.0,2.0,3.0/)
ad =(/1.0d0,2.0d0,3.0d0/)
aq =(/1.0q0,2.0q0,3.0q0/)
adp =(/1.0d0,2.0d0,3.0d0/)
call move_alloc(ar, br)
call move_alloc(ad, bd)
call move_alloc(aq, bq)
call move_alloc(adp, bdp)
if(allocated(ar).neqv..false.) print *,'err'
if(allocated(br).neqv..true.) print *,'err'
if(any(br/=(/1.0,2.0,3.0/))) print *,'err'
if(allocated(ad).neqv..false.) print *,'err'
if(allocated(bd).neqv..true.) print *,'err'
if(any(bd/=(/1.0d0,2.0d0,3.0d0/))) print *,'err'
if(allocated(aq).neqv..false.) print *,'err'
if(allocated(bq).neqv..true.) print *,'err'
if(any(bq/=(/1.0q0,2.0q0,3.0q0/))) print *,'err'
if(allocated(adp).neqv..false.) print *,'err'
if(allocated(bdp).neqv..true.) print *,'err'
if(any(bdp/=(/1.0d0,2.0d0,3.0d0/))) print *,'err'
end subroutine
subroutine complex
complex(4), allocatable :: ac(:), bc(:)
complex(8), allocatable :: acd(:), bcd(:)
complex(16), allocatable :: acq(:), bcq(:)
DOUBLE complex, allocatable :: adc(:), bdc(:)
allocate(ac(3),acd(3),acq(3),adc(3))
ac =(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0)/)
acd =(/(1.0d0,-1.0d0),(2.0d0,-2.0d0),(3.0d0,-3.0d0)/)
acq =(/(1.0q0,-1.0q0),(2.0q0,-2.0q0),(3.0q0,-3.0q0)/)
adc =(/(1.0d0,-1.0d0),(2.0d0,-2.0d0),(3.0d0,-3.0d0)/)
call move_alloc(ac, bc)
call move_alloc(acd, bcd)
call move_alloc(acq, bcq)
call move_alloc(adc, bdc)
if(allocated(ac).neqv..false.) print *,'err'
if(allocated(bc).neqv..true.) print *,'err'
if(any(bc/=(/(1.0,-1.0),(2.0,-2.0),(3.0,-3.0)/))) print *,'err'
if(allocated(acd).neqv..false.) print *,'err'
if(allocated(bcd).neqv..true.) print *,'err'
if(any(bcd/=(/(1.0d0,-1.0d0),(2.0d0,-2.0d0),(3.0d0,-3.0d0)/))) &
 print *,'err'
if(allocated(acq).neqv..false.) print *,'err'
if(allocated(bcq).neqv..true.) print *,'err'
if(any(bcq/=(/(1.0q0,-1.0q0),(2.0q0,-2.0q0),(3.0q0,-3.0q0)/))) &
print *,'err'
if(allocated(adc).neqv..false.) print *,'err'
if(allocated(bdc).neqv..true.) print *,'err'
if(any(bdc/=(/(1.0d0,-1.0d0),(2.0d0,-2.0d0),(3.0d0,-3.0d0)/))) &
 print *,'err'
end subroutine
subroutine logical
logical(1), allocatable :: al1(:), bl1(:)
logical(2), allocatable :: al2(:), bl2(:)
logical(4), allocatable :: al4(:), bl4(:)
logical(8), allocatable :: al8(:), bl8(:)
allocate(al1(3),al2(3),al4(3),al8(3))
al1 =.true._1
al2 =.true._2
al4 =.true._4
al8 =.true._8
call move_alloc(al1, bl1)
call move_alloc(al2, bl2)
call move_alloc(al4, bl4)
call move_alloc(al8, bl8)
if(allocated(al1).neqv..false.) print *,'err'
if(allocated(bl1).neqv..true.) print *,'err'
if(any(bl1.neqv.(/.true._1,.true._1,.true._1/))) print *,'err'
if(allocated(al2).neqv..false.) print *,'err'
if(allocated(bl2).neqv..true.) print *,'err'
if(any(bl2.neqv.(/.true._2,.true._2,.true._2/))) print *,'err'
if(allocated(al4).neqv..false.) print *,'err'
if(allocated(bl4).neqv..true.) print *,'err'
if(any(bl4.neqv.(/.true._4,.true._4,.true._4/))) print *,'err'
if(allocated(al8).neqv..false.) print *,'err'
if(allocated(bl8).neqv..true.) print *,'err'
if(any(bl8.neqv.(/.true._8,.true._8,.true._8/))) print *,'err'
end subroutine
subroutine character
character(1), allocatable :: ach(:), bch(:)
allocate(ach(3))
ach =(/"a","b","c"/)
call move_alloc(ach, bch)
if(allocated(ach).neqv..false.) print *,'err'
if(allocated(bch).neqv..true.) print *,'err'
if(any(bch/=(/"a","b","c"/))) print *,'err'
end subroutine
subroutine type
type ty
character(1), allocatable :: ach(:), bch(:)
end type
type(ty)::typ
allocate(typ%ach(3))
typ%ach =(/"a","b","c"/)
call move_alloc(typ%ach, typ%bch)
if(allocated(typ%ach).neqv..false.) print *,'err'
if(allocated(typ%bch).neqv..true.) print *,'err'
if(any(typ%bch/=(/"a","b","c"/))) print *,'err'
end subroutine
end
