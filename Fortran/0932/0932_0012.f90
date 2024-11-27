module m1
procedure(fun),pointer,protected::ff=>fun
integer,target,allocatable::trg
contains
        function fun()
        integer,pointer::fun
        fun=>trg
        end 
        subroutine sub()
        integer::i
        i=ff()
        if (i/=100) print *,201
        end subroutine
end module
use m1
allocate(trg)
trg=100
call sub
if(.not.(associated(ff(),trg)))print *,101
deallocate(trg)
if(associated(ff(),trg))print *,102
print *,"Pass"
end
        
