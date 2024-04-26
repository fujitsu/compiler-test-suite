type ty
procedure(fun),pointer,nopass::ptr     
procedure(cfun),pointer,nopass::ptr1
end type

integer,target::trg=30,trg1=2121,ii=121
character(4),target::ctrg="1001",ctrg1="1001"
type(ty)::obj
obj%ptr=>fun    
obj%ptr1=>cfun    
write(1,*)trg1
wait(UNIT=1,IOSTAT =ii , IOMSG =ctrg1)
rewind(1)
read(UNIT=1,*)
wait(UNIT=1,IOSTAT = obj%ptr(trg), IOMSG = obj%ptr1(ctrg))
write(1,*)trg1
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
        character(4),pointer::cfun
        character(*),target::ctrg 
        cfun=>ctrg
        end function
end
