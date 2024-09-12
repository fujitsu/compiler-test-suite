implicit type(integer(kind=8)) (a-b),type(character(len=5))(g-i),type(ty) (t)
type ty
integer :: ii = 10
type(character*3) :: ch
type(character*4) :: ch1*5,ch2(2)
end type

interface
type(character*4) function ext_fun()
end
end interface

character*7 :: act = "abcdef"
character*6 :: act1 = "012345"
type(character(len=4)),allocatable :: act2
integer :: ll = 4

allocate(act2)
act2 = "ABCD"
if(f2(act2) .ne. "ABCD") print*,"1211"

if(kind(b) .ne. 8) print*,"121"
if(kind(a) .ne. 8) print*,"122"
if(a%kind .ne. 8) print*,"1222"
if(len(gx) .ne. 5) print*,"123"
if(len(ho) .ne. 5) print*,"124"
if(len(ii) .ne. 5) print*,"125"
if(tt%ii .ne. 10) print*,"126"
if(tt%ch%len .ne. 3) print*,"127"
if(tt%ch1%len .ne. 5) print*,"128"
if(tt%ch2%len .ne. 4) print*,"129"
if(sizeof(tt%ch2) .ne. 8) print*,"130"
call sub(act,act1)
if(f1() .ne. (4,8)) print*,"131"
print*,"Pass"
contains
subroutine sub(b,a)
Implicit type(character*6) (a-b),type(ty) (g), type(character*7) (i-k)
if(len(b) .ne. 6) print*,"221"
if(len(a) .ne. 6) print*,"222"
if(a%kind .ne. 1) print*,"2222"
if(len(ix) .ne. 7) print*,"223"
if(len(ko) .ne. 7) print*,"224"
if(len(ji) .ne. 7) print*,"225"
if(gt%ii .ne. 10) print*,"226"
if(gt%ch%len .ne. 3) print*,"227"
if(gt%ch1%len .ne. 5) print*,"228"
if(gt%ch2%len .ne. 4) print*,"229"
if(sizeof(gt%ch2) .ne. 8) print*,"230"
end

type(COMPLEX (KIND = KIND (0.0D0))) function f1()
 parameter(a = 2)
 procedure(type(character*4)),pointer :: prc
 prc=>ext_fun
 if(kind(a) .ne. 8) print*,"310"
 if(kind(f1) .ne. 8) print*,"311"
 if(prc() .ne. "ABCD") print*,"312",prc()
 f1%re = 4
 f1%im = 8
 end

 type(character*(ll)) function f2(alc)
 type(character(len=*)) :: alc
 allocatable :: alc
 if(len(alc) .ne. 4) print*,"221"
 f2 = alc
 end

 End

 type(character*4) function ext_fun()
 ext_fun = "ABCD"
 end

