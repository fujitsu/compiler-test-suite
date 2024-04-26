module m1
type ty
contains
        procedure,nopass::fun
        procedure,nopass::cfun
end type

contains
        function fun(trg)
        integer,pointer::fun
        integer,target::trg
        fun=>trg
        end function
        function cfun(ctrg)
        character(4),pointer::cfun
        character(*),target::ctrg 
        cfun=>ctrg
        end function
end module

use m1
integer,target::trg=30,ii=121
character(4),target::ctrg="1001",ctrg1="1001"
type(ty)::obj
write(UNIT=1,IOSTAT = ii, IOMSG = ctrg1)"abcdefg"
flush(UNIT=1,IOSTAT = obj%fun(trg), IOMSG =  obj%cfun(ctrg))
if (trg /= 0) print *,101,ii
if (ctrg /= "1001") print *,102,ctrg
print *,"Pass"
end
