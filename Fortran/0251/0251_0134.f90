type tt
 integer,allocatable :: ii
end type

type tt2
 type(tt) :: cmp
end type

call ss()

contains
subroutine ss()
type at
 type(tt2),allocatable :: cc
end type

block
type bt
 type(at) :: cmp2
end type

type(bt) ,save:: alc
type(bt) :: alc2
allocate(alc%cmp2%cc)
allocate(alc%cmp2%cc%cmp%ii)
allocate(alc2%cmp2%cc)
allocate(alc2%cmp2%cc%cmp%ii)
alc%cmp2%cc%cmp%ii=2
alc2%cmp2%cc%cmp%ii=12
if(alc%cmp2%cc%cmp%ii==2) print*,'pass'
if(alc2%cmp2%cc%cmp%ii/=12) print*,101
block
type bt
 type(at) :: cmp2
end type

type(bt) ,save:: alc
type(bt) :: alc2
allocate(alc%cmp2%cc)
allocate(alc%cmp2%cc%cmp%ii)
allocate(alc2%cmp2%cc)
allocate(alc2%cmp2%cc%cmp%ii)
alc%cmp2%cc%cmp%ii=2
alc2%cmp2%cc%cmp%ii=12
if(alc%cmp2%cc%cmp%ii/=2) print*,200
if(alc2%cmp2%cc%cmp%ii/=12) print*,201
end block
block
type bt
 type(at) :: cmp2
end type

type(bt) ,save:: alc
type(bt) :: alc2
allocate(alc%cmp2%cc)
allocate(alc%cmp2%cc%cmp%ii)
allocate(alc2%cmp2%cc)
allocate(alc2%cmp2%cc%cmp%ii)
alc%cmp2%cc%cmp%ii=2
alc2%cmp2%cc%cmp%ii=12
if(alc%cmp2%cc%cmp%ii/=2) print*,300
if(alc2%cmp2%cc%cmp%ii/=12) print*,301
end block
end block

block
type bt
 type(at) :: cmp2
end type

type(bt) ,save:: alc
type(bt) :: alc2
allocate(alc%cmp2%cc)
allocate(alc%cmp2%cc%cmp%ii)
allocate(alc2%cmp2%cc)
allocate(alc2%cmp2%cc%cmp%ii)
alc%cmp2%cc%cmp%ii=2
alc2%cmp2%cc%cmp%ii=12
if(alc%cmp2%cc%cmp%ii/=2) print*,400
if(alc2%cmp2%cc%cmp%ii/=12) print*,401
end block
end subroutine
end
