integer, target::trg=10
integer::arr(5)
arr(4)=1000
if(trg /=10) print *,101
fun()=arr(4)
if(trg /=1000)print *,102
print *,"Pass"
contains
        function fun()
        integer, pointer::fun
        fun=>trg
        end function
end
