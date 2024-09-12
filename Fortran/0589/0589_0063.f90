module m
type ty
real*8,allocatable::ii(:)
real*4::re
contains
    procedure,nopass::fun
end type

contains
        function fun(itrg,jj)
         real*8,pointer::fun
         type(ty),target::itrg
         integer::jj
         if (jj == 1) then
         allocate(itrg%ii(1))
         itrg%ii(1)=1000.00
         itrg%re=11.11
         fun=>itrg%ii(1)
         else if(jj == 2) then 
         allocate(itrg%ii(2))
         itrg%ii(2)=625.00
         itrg%re=11.11
         fun=>itrg%ii(2)
         else
         allocate(itrg%ii(1))
         itrg%ii(1)=1000.00
         itrg%re=11.11
         fun=>itrg%ii(1)
         end if
        end function
end module

use m
type(ty)::obj
type(ty),target::trg
integer::i
allocate(obj%ii(2))
obj%re=500.12
obj%ii(2)=121.00
i=2
fun(trg,i)=sqrt(obj%ii(2))
if (trg%ii(2) /= 11.0) print *,101
deallocate(obj%ii)
if (trg%ii(2) /= 11.0) print *,102
deallocate(trg%ii)
allocate(obj%ii(1))
obj%ii(1)=144.00
i=1
fun(trg,i)=sqrt(obj%ii(1))
if (trg%ii(1) /= 12.0) print *,103
deallocate(obj%ii)
if (trg%ii(1) /= 12.0) print *,104
deallocate(trg%ii)
print *,"Pass"
end
