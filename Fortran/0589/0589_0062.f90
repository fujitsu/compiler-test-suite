module m
type ty
character(len=8),allocatable::ch(:)
real*8::re
contains
    procedure,nopass::fun
end type
contains
        function fun(itrg)
         type(ty),pointer::fun
         type(ty),target::itrg
         allocate(itrg%ch(2))
         itrg%ch(2)(1:8)="AAAAAAA"
         itrg%re=11.11
         fun=>itrg
        end function
end module

use m
type(ty)::obj
type(ty),target::trg
allocate(obj%ch(2))
obj%re=500.12
obj%ch(2)(1:8)="BBBBBBB"
obj%ch(1)(1:3)="kkr"
trg%fun(trg)=obj
if (trg%ch(2)(1:8) /= "BBBBBBB") print *,101
if (trg%ch(1)(1:3) /= "kkr") print *,102
if (trg%re /= 500.12) print *,103
if (kind(trg%re) /= 8) print *,104,kind(trg%re)
if (len(trg%ch(1)) /= 8) print *,105
if (size(trg%ch) /= 2) print *,106
print *,"Pass"
end
