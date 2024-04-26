module m1
interface 
        function fun(trg)
        integer,pointer::fun
        integer,target::trg
        end function
        function cfun(ctrg)
        character(:),pointer::cfun
        character(*),target::ctrg
        end function
end interface

integer,target::trg=30,trg1=2121,ii=121
type ty
contains
        generic::test=>fun,cfun
        procedure,nopass::fun
        procedure,nopass::cfun
end type
end module

use m1
character(4),target::ctrg="1001",ctrg1="1001"
type(ty)::obj(2,1,2)
write(1,*)trg1
wait(UNIT=1,IOSTAT =ii , IOMSG =ctrg1)
rewind(1)
read(UNIT=1,*)
wait(UNIT=1,IOSTAT = obj(1,1,1)%test(trg), IOMSG = obj(1,1,1)%test(ctrg))
write(1,*)trg1
if (trg /= 0) print *,101,ii
if (ctrg /= "1001") print *,102,ctrg
print *,"Pass"
end
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
