type ty
integer, pointer :: i1(:)
integer, allocatable, dimension(:) :: i2,i4
integer, pointer, dimension(:) :: i3

character(len=:), pointer :: ch1(:)
character(len=:), allocatable, dimension(:) :: ch2,ch4
character(len=:), pointer, dimension(:) :: ch3

complex , pointer:: c1(:)
complex, allocatable, dimension(:) :: c2,c4
complex, pointer, dimension(:) :: c3

logical , pointer:: l1(:)
logical, allocatable, dimension(:) :: l2,l4
logical, pointer, dimension(:) :: l3

real , pointer:: r1(:)
real, allocatable, dimension(:) :: r2,r4
real, pointer, dimension(:) :: r3
end type ty

type(ty)::obj

allocate(character(len=3)::obj%ch1(3))
allocate(obj%i1(5),obj%c1(3),obj%l1(3),obj%r1(3))

obj%i1=2
obj%r1=5.2
obj%ch1='ABC'
obj%c1=(2,3)
obj%l1=.true.

allocate(obj%i2,obj%i3,obj%i4 , source= obj%i1)
allocate(obj%ch2, obj%ch3, obj%ch4   , source= obj%ch1)
allocate(obj%c2, obj%c3, obj%c4   , source= obj%c1)
allocate(obj%l2, obj%l3, obj%l4   , source= obj%l1)
allocate(obj%r2, obj%r3, obj%r4   , source= obj%r1)

if(any(obj%i2.ne.2))print*,101
if(any(obj%i3.ne.2))print*,102
if(any(obj%i4.ne.2))print*,103
if(size(obj%i2).ne.5)print*,104
if(size(obj%i3).ne.5)print*,105
if(size(obj%i4).ne.5)print*,106
if(lbound(obj%i2,1).ne.1)print*,107
if(ubound(obj%i2,1).ne.5)print*,108
if(lbound(obj%i3,1).ne.1)print*,109
if(ubound(obj%i3,1).ne.5)print*,110
if(lbound(obj%i4,1).ne.1)print*,111
if(ubound(obj%i4,1).ne.5)print*,112

if(any(obj%ch2.ne.'ABC'))print*,201
if(any(obj%ch3.ne.'ABC'))print*,201
if(any(obj%ch4.ne.'ABC'))print*,201
if(size(obj%ch2).ne.3)print*,204
if(size(obj%ch3).ne.3)print*,205
if(size(obj%ch4).ne.3)print*,206
if(lbound(obj%ch2,1).ne.1)print*,207
if(ubound(obj%ch2,1).ne.3)print*,208
if(lbound(obj%ch3,1).ne.1)print*,209
if(ubound(obj%ch3,1).ne.3)print*,210
if(lbound(obj%ch4,1).ne.1)print*,211
if(ubound(obj%ch4,1).ne.3)print*,212
if(len(obj%ch2).ne.3)print*,214
if(len(obj%ch3).ne.3)print*,215
if(len(obj%ch4).ne.3)print*,216

if(any(real(obj%c2).ne.2))print*,301
if(any(real(obj%c3).ne.2))print*,302
if(any(real(obj%c4).ne.2))print*,303
if(any(imag(obj%c2).ne.3))print*,304
if(any(imag(obj%c3).ne.3))print*,305
if(any(imag(obj%c4).ne.3))print*,306
if(size(obj%c2).ne.3)print*,307
if(size(obj%c3).ne.3)print*,308
if(size(obj%c4).ne.3)print*,309
if(lbound(obj%c2,1).ne.1)print*,310
if(ubound(obj%c2,1).ne.3)print*,311
if(lbound(obj%c3,1).ne.1)print*,312
if(ubound(obj%c3,1).ne.3)print*,313
if(lbound(obj%c4,1).ne.1)print*,314
if(ubound(obj%c4,1).ne.3)print*,315

if(any(int(obj%r2).ne.5))print*,401
if(any(int(obj%r3).ne.5))print*,401
if(any(int(obj%r4).ne.5))print*,401
if(size(obj%r2).ne.3)print*,404
if(size(obj%r3).ne.3)print*,405
if(size(obj%r4).ne.3)print*,406
if(lbound(obj%r2,1).ne.1)print*,407
if(ubound(obj%r2,1).ne.3)print*,408
if(lbound(obj%r3,1).ne.1)print*,409
if(ubound(obj%r3,1).ne.3)print*,410
if(lbound(obj%r4,1).ne.1)print*,411
if(ubound(obj%r4,1).ne.3)print*,412

if(any(obj%l2.neqv..true.))print*,501
if(any(obj%l3.neqv..true.))print*,501
if(any(obj%l4.neqv..true.))print*,501
if(size(obj%l2).ne.3)print*,504
if(size(obj%l3).ne.3)print*,505
if(size(obj%l4).ne.3)print*,506
if(lbound(obj%l2,1).ne.1)print*,507
if(ubound(obj%l2,1).ne.3)print*,508
if(lbound(obj%l3,1).ne.1)print*,509
if(ubound(obj%l3,1).ne.3)print*,510
if(lbound(obj%l4,1).ne.1)print*,511
if(ubound(obj%l4,1).ne.3)print*,512

print*,"Pass"
end
