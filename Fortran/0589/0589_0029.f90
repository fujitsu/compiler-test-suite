integer, target::trg =1000
if(trg/=1000)print *,101
call f()
if(trg/=100)print *,102
print *,"Pass"
contains
        subroutine f()
        integer::aa
        aa=100
        fun()=aa
        end subroutine
        function fun()
        integer,pointer::fun
        fun=>trg
        end function
end
