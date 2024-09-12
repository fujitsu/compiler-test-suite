module m1
integer :: ii
end module

program main
use m1

interface
subroutine sub(d1, d2, n, d3)
  integer :: n
  character(kind=4,len=n),value, optional :: d1(:,:)
  character(kind=4,len=*),value, optional :: d2(:,:)
  character(kind=4,len=EXPONENT(n+1.1)),value, optional :: d3(:,:,:)
end subroutine
end interface

type ty
integer :: n
character(kind=4, len=:),allocatable :: ch1(:,:)
character(kind=4, len=4) :: ch2(4,8)
character(kind=4, len=:),pointer :: ch3(:,:,:)
end type

character(kind=4, len=3),target :: trg(5,6,7)
type(ty)::obj(3)

allocate(character(kind=4, len=5)::obj(1)%ch1(2,3))

ii  = 5 
trg = 4_"CCC"

obj(1)%ch1 = 4_"AAAAA"
obj(2)%ch2 = 4_"BBBB"
obj(3)%ch3 => trg

call sub(d1=obj(1)%ch1, n=ii)
if (all(obj(1)%ch1 /= 4_"AAAAA")) print *,101

call sub(d1=obj(1)%ch1, d2=obj(2)%ch2, n=ii)
if (all(obj(1)%ch1 /= 4_"AAAAA")) print *,102
if (all(obj(2)%ch2 /= 4_"BBBB")) print *,103

call sub(obj(1)%ch1, obj(2)%ch2, ii, obj(3)%ch3)
if (all(obj(1)%ch1 /= 4_"AAAAA")) print *,104
if (all(obj(2)%ch2 /= 4_"BBBB")) print *,105
if (all(trg /= 4_"CCC")) print *,106

print*, "PASS"
end

subroutine sub(d1, d2, n, d3)
  integer :: n
  character(kind=4,len=n),value, optional :: d1(:,:)
  character(kind=4,len=*),value, optional :: d2(:,:)
  character(kind=4,len=EXPONENT(n+1.1)),value, optional :: d3(:,:,:)

   if (present(d1)) then
    if (len(d1) /= 5) print *,201
    if (all(d1 /= 4_"AAAAA")) print *,202
    if (size(d1) /=6) print *,203

    d1 = 4_"11111"
   end if

   if (present(d2)) then
     if (len(d2) /= 4) print *,204
     if (all(d2 /= 4_"BBBB")) print *,205
     if (size(d2) /= 32) print *,206

     d2 = 4_"2222"
   end if

   if (present(d3)) then
     if (size(d3) /= 210) print *,207
     if (len(d3) /= 3) print *,208
     if (all(d3 /= 4_"CCC")) print *,209

     d3 = 4_"333"
   end if
end subroutine
