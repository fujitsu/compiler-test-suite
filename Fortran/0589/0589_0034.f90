integer, target,allocatable::trg

allocate(trg)

trg = 10
fun()=100

if(.NOT.ALLOCATED(trg)) print*, 101
if(trg /= 100)print *,102, trg
print *,"Pass"

contains
        function fun()
        integer, pointer::fun   
        fun=>trg
        end function
end 

