integer :: i1(5)
integer, allocatable, dimension(:) :: i2,i4
integer, pointer, dimension(:) :: i3

character :: ch1(3)
character, allocatable, dimension(:) :: ch2,ch4
character, pointer, dimension(:) :: ch3

complex :: c1(3)
complex, allocatable, dimension(:) :: c2,c4
complex, pointer, dimension(:) :: c3

logical :: l1(3)
logical, allocatable, dimension(:) :: l2,l4
logical, pointer, dimension(:) :: l3

real :: r1(3)
real, allocatable, dimension(:) :: r2,r4
real, pointer, dimension(:) :: r3

i1=2
r1=5.2
ch1='A'
c1=(2,3)
l1=.true.

allocate(i2,i3,i4 , source= i1)
allocate(ch2, ch3, ch4   , source= ch1)
allocate(c2, c3, c4   , source= c1)
allocate(l2, l3, l4   , source= l1)
allocate(r2, r3, r4   , source= r1)

if(any(i2.ne.2))print*,101
if(any(i3.ne.2))print*,102
if(any(i4.ne.2))print*,103
if(size(i2).ne.5)print*,104
if(size(i3).ne.5)print*,105
if(size(i4).ne.5)print*,106
if(lbound(i2,1).ne.1)print*,107
if(ubound(i2,1).ne.5)print*,108
if(lbound(i3,1).ne.1)print*,109
if(ubound(i3,1).ne.5)print*,110
if(lbound(i4,1).ne.1)print*,111
if(ubound(i4,1).ne.5)print*,112

if(any(ch2.ne.'A'))print*,201
if(any(ch3.ne.'A'))print*,201
if(any(ch4.ne.'A'))print*,201
if(size(ch2).ne.3)print*,204
if(size(ch3).ne.3)print*,205
if(size(ch4).ne.3)print*,206
if(lbound(ch2,1).ne.1)print*,207
if(ubound(ch2,1).ne.3)print*,208
if(lbound(ch3,1).ne.1)print*,209
if(ubound(ch3,1).ne.3)print*,210
if(lbound(ch4,1).ne.1)print*,211
if(ubound(ch4,1).ne.3)print*,212

if(any(real(c2).ne.2))print*,301
if(any(real(c3).ne.2))print*,302
if(any(real(c4).ne.2))print*,303
if(any(imag(c2).ne.3))print*,304
if(any(imag(c3).ne.3))print*,305
if(any(imag(c4).ne.3))print*,306
if(size(c2).ne.3)print*,307
if(size(c3).ne.3)print*,308
if(size(c4).ne.3)print*,309
if(lbound(c2,1).ne.1)print*,310
if(ubound(c2,1).ne.3)print*,311
if(lbound(c3,1).ne.1)print*,312
if(ubound(c3,1).ne.3)print*,313
if(lbound(c4,1).ne.1)print*,314
if(ubound(c4,1).ne.3)print*,315

if(any(int(r2).ne.5))print*,401
if(any(int(r3).ne.5))print*,401
if(any(int(r4).ne.5))print*,401
if(size(r2).ne.3)print*,404
if(size(r3).ne.3)print*,405
if(size(r4).ne.3)print*,406
if(lbound(r2,1).ne.1)print*,407
if(ubound(r2,1).ne.3)print*,408
if(lbound(r3,1).ne.1)print*,409
if(ubound(r3,1).ne.3)print*,410
if(lbound(r4,1).ne.1)print*,411
if(ubound(r4,1).ne.3)print*,412

if(any(l2.neqv..true.))print*,501
if(any(l3.neqv..true.))print*,501
if(any(l4.neqv..true.))print*,501
if(size(l2).ne.3)print*,504
if(size(l3).ne.3)print*,505
if(size(l4).ne.3)print*,506
if(lbound(l2,1).ne.1)print*,507
if(ubound(l2,1).ne.3)print*,508
if(lbound(l3,1).ne.1)print*,509
if(ubound(l3,1).ne.3)print*,510
if(lbound(l4,1).ne.1)print*,511
if(ubound(l4,1).ne.3)print*,512

print*,"Pass"
end
