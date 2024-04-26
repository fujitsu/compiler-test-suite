type tt
 character(4) :: ch = 'main'
end type

type,extends(tt) :: tt2
 integer :: ii=2
end type

class(tt),allocatable :: obj(:,:)
allocate(tt::obj(4,5))
a: block
class(tt),pointer :: obj(:,:)
allocate(tt2::obj(4,5))
 obj%ch = 'axxx'

 select type(obj)
 type is(tt2)
  if(any(obj%ch/='axxx')) print*,101
  if(any(obj%ii/=2)) print*,301
 class default
  print*,801
 end select

 a1: block
class(tt),allocatable :: obj(:,:)
allocate(tt::obj(4,5))
 obj%ch = 'a1xx'
 select type(obj)
 type is(tt)
 if(any(obj%ch/='a1xx')) print*,112
 class default
  print*,802
 end select
 end block a1

 a2: block
class(tt),allocatable :: obj(:,:)
allocate(tt2::obj(4,5))
 obj%ch = 'a2xx'
 select type(obj)
 type is(tt2)
 if(any(obj%ch/='a2xx')) print*,111
 if(any(obj%ii/=2)) print*,311
 class default
  print*,803
 end select
  a21: block
class(tt),pointer :: obj(:,:)
allocate(tt::obj(4,5))
 obj%ch = 'a21x'
 select type(obj)
 type is(tt)
 if(any(obj%ch/='a21x')) print*,110
 class default
  print*,804
 end select
  end block a21

  a22: block
class(tt),allocatable :: obj(:,:)
allocate(tt2::obj(4,5))
 obj%ch = 'a22x'
 select type(obj)
 type is(tt2)
 if(any(obj%ch/='a22x')) print*,109
 if(any(obj%ii/=2)) print*,311
 class default
  print*,805
 end select
  end block a22
 end block a2

 a3: block
class(tt),allocatable :: obj(:,:)
allocate(tt::obj(4,5))
 obj%ch = 'a3xx'
 select type(obj)
 type is(tt)
 if(any(obj%ch/='a3xx')) print*,108
 class default
  print*,806
 end select
 end block a3
end block a

b: block
class(tt),allocatable :: obj(:,:)
allocate(tt2::obj(4,5))
 obj%ch = 'bxxx'
 select type(obj)
 type is(tt2)
 if(any(obj%ch/='bxxx')) print*,107
 if(any(obj%ii/=2)) print*,311
 class default
  print*,807
 end select
end block b

c: block
class(tt),allocatable :: obj(:,:)
allocate(tt::obj(4,5))
 obj%ch = 'cxxx'
 select type(obj)
 type is(tt)
 if(any(obj%ch/='cxxx')) print*,106
 class default
  print*,808
 end select
 c1: block
class(tt),allocatable :: obj(:,:)
allocate(tt2::obj(4,5))
 obj%ch = 'c1xx'
 select type(obj)
 type is(tt2)
 if(any(obj%ch/='c1xx')) print*,105
 if(any(obj%ii/=2)) print*,311
 class default
  print*,809
 end select
  c11: block
class(tt),allocatable :: obj(:,:)
allocate(tt::obj(4,5))
 obj%ch = 'c11x'
 select type(obj)
 type is(tt)
 if(any(obj%ch/='c11x')) print*,104
 class default
  print*,810
 end select
  end block c11

  c12: block
class(tt),allocatable :: obj(:,:)
allocate(tt2::obj(4,5))
 obj%ch = 'c12x'
 select type(obj)
 type is(tt2)
 if(any(obj%ch/='c12x')) print*,103
 if(any(obj%ii/=2)) print*,311
 class default
  print*,811
 end select
  end block c12
 end block c1
end block c

d: block
class(tt),allocatable :: obj(:,:)
allocate(tt::obj(4,5))
 obj%ch = 'dxxx'
 select type(obj)
 type is(tt)
 if(any(obj%ch/='dxxx')) print*,102
 class default
  print*,812
 end select
end block d
 select type(obj)
 type is(tt)
 if(any(obj%ch=='main')) print*,'pass'
 class default
  print*,813,'here'
 end select
end
