module m1
type ty
contains
        generic::test =>fun,cfun
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
        character(:),pointer::cfun
        character(*),target::ctrg 
        cfun=>ctrg
        end function
end module

use m1
integer,target::trg=30,trg1=2121,ii=121,ii1
character(4),target::ctrg="1001",ctrg1="1001"
type(ty)::obj(2,1)
write(1,*)trg1
rewind(1)
read(UNIT=1,10,IOSTAT = ii, IOMSG =ctrg1,SIZE = ii1 ,ADVANCE = 'no')
read(UNIT=1,10,IOSTAT = obj(2,1)%test(trg) ,IOMSG = obj(2,1)%test(ctrg),SIZE = obj(2,1)%test(trg1),ADVANCE = 'no')
10 format(3i10)
if (trg /= 0) print *,101,ii
if (ctrg /= "1001") print *,102,ctrg
if (trg1 /= 0) print *,103
print *,"Pass"
end
