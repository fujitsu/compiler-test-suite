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

integer,target::trg=120,trg1=2121,ii=121,ii1
character(4),target::ctrg="1001",ctrg1="1001"
write(1,*)trg1
rewind(1)
read(UNIT=1,10,IOSTAT = ii, IOMSG =ctrg1,SIZE = ii1 ,ADVANCE = 'no')
read(UNIT=1,10,IOSTAT = fun(trg) ,IOMSG = cfun(ctrg),SIZE = fun(trg1),ADVANCE = 'no')
10 format(3i10)
if (trg /= 0) print *,101
if (ctrg /= "1001") print *,102,ctrg
if (trg1 /= 0) print *,103
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
