program main
integer :: ii

type ty
integer :: n
character(:),allocatable :: ch1(:,:)
character(4) :: ch2(4)
character(:),pointer :: ch3(:,:,:)
end type

character(3),target :: trg(5,6,7)
type(ty)::obj(3)

allocate(character(5)::obj(1)%ch1(2,3))

ii  = 5 
trg = "CCC"

obj(1)%ch1 = "AAAAA"
obj(2)%ch2 = "BBBB"
obj(3)%ch3 => trg

call sub(d1=obj(1)%ch1, n=ii)
if (all(obj(1)%ch1 /= "AAAAA")) print *,101

call sub(d1=obj(1)%ch1, d2=obj(2)%ch2, n=ii)
if (all(obj(1)%ch1 /= "AAAAA")) print *,102
if (all(obj(2)%ch2 /= "BBBB")) print *,103

call sub(obj(1)%ch1, obj(2)%ch2, ii, obj(3)%ch3)
if (all(obj(1)%ch1 /= "AAAAA")) print *,104
if (all(obj(2)%ch2 /= "BBBB")) print *,105
if (all(trg /= "CCC")) print *,106

print*, "PASS"

contains
subroutine sub(d1, d2, n, d3)
  integer :: n
  character(len=n),value, optional :: d1(:,:)
  character(len=*),value, optional :: d2(:)
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
     if (size(d2) /= 4) print *,206

     d2 = "2222"
   end if

   if (present(d3)) then
     if (size(d3) /= 210) print *,207
     if (len(d3) /= 3) print *,208
     if (all(d3 /= "CCC")) print *,209

     d3 = "333"
   end if
end subroutine
end
