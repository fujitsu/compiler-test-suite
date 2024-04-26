type ty
procedure(fun),pointer,nopass::ptr
procedure(cfun),pointer,nopass::ptr1
end type
type(ty)::obj
integer,target::trg=30,ii=121
character(4),target::ctrg="1001",ctrg1="1001"
obj%ptr=>fun
obj%ptr1=>cfun
endfile(UNIT=1,IOSTAT = ii, IOMSG =ctrg1)
endfile(UNIT=1,IOSTAT = obj%ptr(trg), IOMSG = obj%ptr1(ctrg))
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
