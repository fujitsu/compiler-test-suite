module m1
type(character(LEN=:)),allocatable,target::trg
end module

use m1
 allocate(character(LEN=10)::trg)
 trg="AAAAAAA"
 if(allocated(trg) .neqv. .true.)print*,101
block
if(allocated(trg) .neqv. .true.)print*,102
fun()="BBBBBBB"
if(trg /= "BBBBBBB") print*,103
end block

if(trg /= "BBBBBBB") print*,104
print *,"Pass"

contains 
     function fun()
     type(character(LEN=10)),pointer::fun
     fun=>trg
     end function

end
