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
character(4),target::ctrg="1001",ctrg1="1001"
write(1,*)trg1
wait(UNIT=1,IOSTAT =ii , IOMSG =ctrg1)
rewind(1)
read(UNIT=1,*)
wait(UNIT=1,IOSTAT = fun(trg), IOMSG = cfun(ctrg))
write(1,*)trg1
if (trg /= 0) print *,101
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
