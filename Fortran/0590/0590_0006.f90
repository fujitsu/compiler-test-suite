module m1
type kk1
character(len=:),allocatable :: ch1(:,:)
character(len=4) :: ch2(4,8)
character(len=:),pointer :: ch3(:,:,:)
end type

type kk4
character(kind=4, len=:),allocatable :: ch1(:,:)
character(kind=4, len=:),pointer :: ch3(:,:,:)
end type

integer :: ii
end module

program main
use m1

interface gnr
subroutine sub_kind4(d1, n1, n2, d3)
  integer :: n1
  integer :: n2
  character(kind=4,len=n2),value, optional :: d1(:,:)
  character(kind=4,len=EXPONENT(n1+1.1)),value, optional :: d3(:,:,:)
end subroutine

subroutine sub_kind1(d1, d2, n, d3)
  integer :: n
  character(len=n),value, optional :: d1(:,:)
  character(len=*),value, optional :: d2(:,:)
  character(len=EXPONENT(n+1.1)),value, optional :: d3(:,:,:)
end subroutine
end interface

character(len=3),target :: trg1(5,6,7)
character(kind=4, len=3),target :: trg4(5,6,7)

type(kk1)::obj1(3)
type(kk4)::obj4(3)

allocate(character(len=5)::obj1(1)%ch1(2,3))
allocate(character(kind=4, len=5)::obj4(1)%ch1(2,3))

ii   = 5 
trg1 = "CCC"
trg4 = 4_"DDD"

obj1(1)%ch1 = "AAAAA"
obj1(2)%ch2 = "BBBB"
obj1(3)%ch3 => trg1

obj4(1)%ch1 = 4_"EEEEE"
obj4(3)%ch3 => trg4

call gnr(d1=obj1(1)%ch1, n=ii)
if (all(obj1(1)%ch1 /= "AAAAA")) print *,101

call gnr(d1=obj1(1)%ch1, d2=obj1(2)%ch2, n=ii)
if (all(obj1(1)%ch1 /= "AAAAA")) print *,102
if (all(obj1(2)%ch2 /= "BBBB")) print *,103

call gnr(d1=obj4(1)%ch1, n1=ii, n2=ii)
if (all(obj4(1)%ch1 /= 4_"EEEEE")) print *,102

call gnr(obj1(1)%ch1, obj1(2)%ch2, ii, obj1(3)%ch3)
if (all(obj1(1)%ch1 /= "AAAAA")) print *,104
if (all(obj1(2)%ch2 /= "BBBB")) print *,105
if (all(trg1 /= "CCC")) print *,106

print*, "PASS"
end

subroutine sub_kind1(d1, d2, n, d3)
  integer :: n
  character(len=n),value, optional :: d1(:,:)
  character(len=*),value, optional :: d2(:,:)
  character(len=EXPONENT(n+1.1)),value, optional :: d3(:,:,:)

   if (present(d1)) then
    if (len(d1) /= 5) print *,201
    if (all(d1 /= "AAAAA")) print *,202
    if (size(d1) /=6) print *,203

    d1 = "11111"
   end if

   if (present(d2)) then
     if (len(d2) /= 4) print *,204
     if (all(d2 /= "BBBB")) print *,205
     if (size(d2) /= 32) print *,206

     d2 = "2222"
   end if

   if (present(d3)) then
     if (size(d3) /= 210) print *,207
     if (len(d3) /= 3) print *,208
     if (all(d3 /= "CCC")) print *,209

     d3 = "333"
   end if
end subroutine

subroutine sub_kind4(d1, n1, n2, d3)
  integer :: n1
  integer :: n2
  character(kind=4,len=n2),value, optional :: d1(:,:)
  character(kind=4,len=EXPONENT(n1+1.1)),value, optional :: d3(:,:,:)

   if (present(d1)) then
    if (len(d1) /= 5) print *,301
    if (all(d1 /= 4_"EEEEE")) print *,302
    if (size(d1) /=6) print *,303

    d1 = 4_"11111"
   end if

   if (present(d3)) then
     if (size(d3) /= 210) print *,304
     if (len(d3) /= 3) print *,305
     if (all(d3 /= 4_"DDD")) print *,306

     d3 = 4_"333"
   end if
end subroutine
