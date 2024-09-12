character(len=10),target::trg="abc xyz"
if(trg /= "abc xyz")print*,100
fun()="pqr"
if(trg /="pqr")print*,101
if(len(trg) /= 10) print *,102
print *,"Pass"
contains
        function fun()
        character(len=10),pointer::fun
        fun=>trg
        end function
end
