integer,target::trg=30,trg1=2121,ii=121
character(4),target::ctrg="1001",ctrg1="1001"
write(1,10,IOSTAT = ii, IOMSG =ctrg1,ADVANCE = 'no')trg1
write(UNIT=1,10,IOSTAT = fun(trg) ,IOMSG = cfun(ctrg),ADVANCE = 'no')
rewind(1)
read(1,*)
10 format(3i10)
if (trg /= 0) print *,101,ii
if (ctrg /= "1001") print *,102,ctrg
print *,"Pass"
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
end
