double precision, target::trg=10.0000
if(trg /=10.0000) print*,101
fun()=11.1111
if(trg /=11.1111) print*,102
print*,"Pass"
contains
        function fun()
        double precision, pointer::fun
        fun=>trg
        end function
end
