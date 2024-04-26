interface
        function fun(d)
        integer,pointer::fun
        integer,target::d
        end function
        function cfun(d1)
        character(:),pointer::cfun
        character(*),target::d1
        end function
        function lfun(d2)
        logical,pointer::lfun
        logical,target::d2
        end function
end interface
type ty
procedure(fun),pointer,nopass::ptr=>fun
procedure(cfun),pointer,nopass::cptr=>cfun
procedure(lfun),pointer,nopass::lptr=>lfun
end type 

real(kind=16)::aa1 = 8
integer,target::trg=111
integer,target::trg1=111
integer,target::trg2=112
integer,target::trg3=113
integer,target::trg4=114
integer,target::trg5=115
integer,target::trg6=116
logical,target::ltrg
logical,target::ltrg1
logical,target::ltrg2
logical,target::ltrg3
character(10),target::ctrg = "abcde12345"
character(10),target::ctrg1 = "0000000000"
character(10),target::ctrg2 = "0000000001"
character(10),target::ctrg3 = "0000000003"
character(10),target::ctrg4 = "0000000003"
character(10),target::ctrg5 = "0000000003"
character(10),target::ctrg6 = "0000000003"
character(10),target::ctrg7 = "0000000003"
character(10),target::ctrg8 = "0000000003"
character(10),target::ctrg9 = "0000000003"
character(10),target::ctrg10 = "0000000003"
character(10),target::ctrg11= "0000000003"
character(10),target::ctrg12= "0000000003"
character(10),target::ctrg13= "0000000003"
character(10),target::ctrg14 = "0000000003"
character(10),target::ctrg15= "0000000003"
character(10),target::ctrg16= "0000000003"
character(10),target::ctrg17= "0000000003"
character(10),target::ctrg18= "0000000003"
character(10),target::ctrg19= "0000000003"
character(10),target::ctrg20= "0000000003"
character(10),target::ctrg21= "0000000003"
type(ty)::obj
if (trg /= 111) print *,101
inquire (unit=1,ACCESS = obj%cptr(ctrg),&
         ACTION = obj%cptr(ctrg1),ASYNCHRONOUS = obj%cptr(ctrg2),&
         BLANK =  obj%cptr(ctrg3),DECIMAL = obj%cptr(ctrg4),&
         DELIM = obj%cptr(ctrg5),DIRECT = obj%cptr(ctrg6),&
         ENCODING = obj%cptr(ctrg7),EXIST = obj%lptr(ltrg),&
         FORM = obj%cptr(ctrg8),FORMATTED = obj%cptr(ctrg9),IOMSG=obj%cptr(ctrg20),&
         IOSTAT = obj%ptr(trg),&
         NAME = obj%cptr(ctrg10),NAMED = obj%lptr(ltrg1),NEXTREC = obj%ptr(trg1),NUMBER = obj%ptr(trg2),&
         OPENED =obj%lptr(ltrg2),&
         PAD =obj%cptr(ctrg11),PENDING = obj%lptr(ltrg3),POS = obj%ptr(trg3),&
         POSITION = obj%cptr(ctrg12),READ = obj%cptr(ctrg13),&
         READWRITE = obj%cptr(ctrg14),RECL = obj%ptr(trg4),ROUND = obj%cptr(ctrg15),&
         SEQUENTIAL =  obj%cptr(ctrg16), SIGN =  obj%cptr(ctrg21),SIZE = obj%ptr(trg5),&
         STREAM = obj%cptr(ctrg17),UNFORMATTED = obj%cptr(ctrg18),&
         WRITE =  obj%cptr(ctrg19))
inquire (IOLENGTH = obj%ptr(trg6))aa1
if (trg /= 0) print *,400
if (trg1 /= 0) print *,401
if (trg2 /= -1) print *,402,trg2
if (trg3 /= -1) print *,403,trg3
if (trg4 /= 0) print *,404
if (trg5 /= -1) print *,405,trg5
if (trg6 /= 16) print *,406,trg6
if (ctrg /= "UNDEFINED") print *,103
if (ctrg1 /= "UNDEFINED") print *,104
if (ctrg2 /= "UNDEFINED") print *,105
if (ctrg3 /= "UNDEFINED") print *,106
if (ctrg4 /= "UNDEFINED") print *,107
if (ctrg5 /= "UNDEFINED") print *,108
if (ctrg6 /= "UNKNOWN") print *,109
if (ctrg7 /= "UNKNOWN") print *,110
if (ctrg8 /= "UNDEFINED") print *,111,ctrg8
if (ltrg .neqv. .true.) print *,112,ltrg
if (ctrg9 /= "UNKNOWN") print *,113,ctrg9
if (ctrg10 /= "") print *,114,ctrg10
if (ltrg1 .neqv. .false.) print *,115,ltrg1
if (ltrg2 .neqv. .false.) print *,116,ltrg2
if (ctrg11 /= "YES") print *,117,ctrg11
if (ltrg3 .neqv. .false.) print *,118,ltrg3
if (ctrg12 /= "UNDEFINED") print *,119,ctrg12
if (ctrg13 /= "UNKNOWN") print *,120,ctrg13
if (ctrg14 /= "UNKNOWN") print *,121,ctrg14
if (ctrg15 /= "UNDEFINED") print *,122,ctrg15
if (ctrg16 /= "UNKNOWN") print *,123,ctrg16
if (ctrg17 /= "UNKNOWN") print *,124,ctrg17
if (ctrg18 /= "UNKNOWN") print *,125,ctrg18
if (ctrg19 /= "UNKNOWN") print *,126,ctrg19
if (ctrg20 /= "0000000003") print *,127,ctrg20
if (ctrg21 /= "UNDEFINED") print *,128,ctrg21

print *,"Pass"
end

function fun(d)
integer,pointer::fun
integer,target::d
fun=>d
end function

function cfun(d1)
character(:),pointer::cfun
character(*),target::d1
cfun => d1
end function

function lfun(d2)
logical,pointer::lfun
logical,target::d2
lfun => d2
end function
