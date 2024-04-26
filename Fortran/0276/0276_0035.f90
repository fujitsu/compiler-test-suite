module m1
contains
        function fun(trg)
        integer,pointer::fun
        integer,target::trg
        fun=>trg
        end function
        function cfun(ctrg)
        character(:),pointer::cfun
        character(*),target::ctrg 
        cfun=>ctrg
        end function
end module

use m1
integer,target::trg=0,ii=121
character(4),target::ctrg="1001",ctrg1="1001"
backspace(UNIT=1,IOSTAT = ii, IOMSG =ctrg1)
backspace(UNIT=1,IOSTAT = fun(trg), IOMSG =  cfun(ctrg))
if (trg /= ii) print *,101
if (ctrg /= ctrg1) print *,102,ctrg
print *,"Pass"
end
