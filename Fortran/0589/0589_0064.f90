module m1
type ty
character(LEN=:),allocatable :: ch(:)
integer::ii(2)

contains
procedure,nopass :: fun
end type

type(ty),target::TRG1
type(ty),target::TRG2

contains
         function fun()
         type(ty),pointer :: fun

         fun => TRG1

         call move_alloc(to=TRG2%ch, from=TRG1%ch)
         if (allocated(TRG1%ch) .neqv. .false.) print *,101
         if (allocated(TRG2%ch) .neqv. .true.)print *,102
         end function
end module

use m1
allocate(character(len=5)::TRG1%ch(2))
allocate(character(len=5)::TRG2%ch(2))

fun() = ty(ch=(/"1AAAAA", "2BBBBB", "3CCCCC"/), ii=[5,10])
if (size(TRG2%ch) /= 2)print*,103
if (TRG1%ch(3) /= "3CCCCC") print *,104
if (TRG1%ii(2) /= 10) print *,105
if (size(TRG1%ch) /= 3) print *,106
if (allocated(TRG1%ch) .neqv. .true.) print *,107
if (allocated(TRG2%ch) .neqv. .true.) print *,108
if (rank(TRG1%ch) /=1) print*,109
if (len(TRG1%ch) /= 6) print*,110
print *,"Pass"
end
