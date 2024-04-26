type ty
procedure(fun),pointer,nopass::ptr
procedure(cfun),pointer,nopass::ptr1
end type

integer,target::trg=10,trg1=2121,ii=121,ii1
character(4),target::ctrg="1001",ctrg1="1001"
type(ty)::obj(2,1)
obj(2,1)%ptr=>fun
obj(2,1)%ptr1=>cfun
write(1,*)trg1
rewind(1)
OPEN( 35, FILE='FORT.3', ACCESS='SEQUENTIAL', RECL=20,FORM='UNFORMATTED' ) 
read(UNIT=35,10,IOSTAT = ii, IOMSG =ctrg1,SIZE = ii1 ,ADVANCE ='no')
read(UNIT=35,10,IOSTAT = obj(2,1)%ptr(trg) ,IOMSG = obj(2,1)%ptr1(ctrg),SIZE = obj(2,1)%ptr(trg1),ADVANCE = 'no')
10 format(3i10)
CLOSE (35,STATUS='DELETE' )
if (trg /= ii) print *,101,ii
if (ctrg /= ctrg1) print *,102,ctrg
if (trg1 /= 0) print *,103,ii1
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
