module m1
type ty
integer::ii(2)
character(len=:),allocatable :: ch(:,:)
contains
        procedure,nopass :: fun
end type

type(ty),target,allocatable::trg
type(ty),target,allocatable::itrg

 contains
         function fun()
         type(ty),pointer :: fun
         allocate(trg)
         allocate(character(LEN=5)::trg%ch(2,2))
         fun=>trg
         call move_alloc(to=itrg,from=trg)
         end function
 end module

 use m1
 type(ty)::obj
 allocate(character(LEN=4)::obj%ch(2,2))
 obj%fun()=ty(ch=transpose(reshape((/"AAAAA","BBBBB","CCCCC","DDDDD"/),shape(obj%ch))),ii=[5,10])
 if (all(itrg%ii /= [5,10]))print*,101
 if (size(itrg%ii) /= 2) print *,102
 if (size(itrg%ch) /= 4) print *,103
 if (itrg%ch(2,2) /= "DDDDD") print *,104
 if (len(itrg%ch) /=5) print *,104
 if (allocated(trg) .neqv. .false.) print *,105
 if (allocated(itrg) .neqv. .true.) print *,106
 print *,"Pass"
 end
