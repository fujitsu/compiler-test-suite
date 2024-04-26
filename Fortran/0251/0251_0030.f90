type tt
 character(4) :: ch = 'main'
end type

call ss

contains
subroutine ss
type(tt) :: obj(3,3)
a: block
type(tt) :: obj(3,3)
 obj%ch = 'axxx'
 if(any(obj%ch/='axxx')) print*,101
 a1: block
type(tt) :: obj(3,3)
 obj%ch = 'a1xx'
 if(any(obj%ch/='a1xx')) print*,112
 end block a1

 a2: block
type(tt) :: obj(3,3)
 obj%ch = 'a2xx'
 if(any(obj%ch/='a2xx')) print*,111
  a21: block
type(tt) :: obj(3,3)
 obj%ch = 'a21x'
 if(any(obj%ch/='a21x')) print*,110
  end block a21

  a22: block
type(tt) :: obj(3,3)
 obj%ch = 'a22x'
 if(any(obj%ch/='a22x')) print*,109
  end block a22
 end block a2

 a3: block
type(tt) :: obj(3,3)
 obj%ch = 'a3xx'
 if(any(obj%ch/='a3xx')) print*,108
 end block a3
end block a

b: block
type(tt) :: obj(3,3)
 obj%ch = 'bxxx'
 if(any(obj%ch/='bxxx')) print*,107
end block b

c: block
type(tt) :: obj(3,3)
 obj%ch = 'cxxx'
 if(any(obj%ch/='cxxx')) print*,106
 c1: block
type(tt) :: obj(3,3)
 obj%ch = 'c1xx'
 if(any(obj%ch/='c1xx')) print*,105
  c11: block
type(tt) :: obj(3,3)
 obj%ch = 'c11x'
 if(any(obj%ch/='c11x')) print*,104
  end block c11

  c12: block
type(tt) :: obj(3,3)
 obj%ch = 'c12x'
 if(any(obj%ch/='c12x')) print*,103
  end block c12
 end block c1
end block c

d: block
type(tt) :: obj(3,3)
 obj%ch = 'dxxx'
 if(any(obj%ch/='dxxx')) print*,102
end block d
 if(any(obj%ch=='main')) print*,'pass'
end subroutine
end
