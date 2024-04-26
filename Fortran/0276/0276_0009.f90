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
contains
        procedure,nopass::fun
        procedure,nopass::cfun
        procedure,nopass::lfun
end type 

real(kind=16)::aa2 = 8
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

real(kind=16)::aa1 = 8
integer,target::tar=111
integer,target::tar1=111
integer,target::tar2=112
integer,target::tar3=113
integer,target::tar4=114
integer,target::tar5=115
integer,target::tar6=116
logical,target::ltar
logical,target::ltar1
logical,target::ltar2
logical,target::ltar3
character(10),target::ctar = "abcde12345"
character(10),target::ctar1 = "0000000000"
character(10),target::ctar2 = "0000000001"
character(10),target::ctar3 = "0000000003"
character(10),target::ctar4 = "0000000003"
character(10),target::ctar5 = "0000000003"
character(10),target::ctar6 = "0000000003"
character(10),target::ctar7 = "0000000003"
character(10),target::ctar8 = "0000000003"
character(10),target::ctar9 = "0000000003"
character(10),target::ctar10 = "0000000003"
character(10),target::ctar11= "0000000003"
character(10),target::ctar12= "0000000003"
character(10),target::ctar13= "0000000003"
character(10),target::ctar14 = "0000000003"
character(10),target::ctar15= "0000000003"
character(10),target::ctar16= "0000000003"
character(10),target::ctar17= "0000000003"
character(10),target::ctar18= "0000000003"
character(10),target::ctar19= "0000000003"
character(10),target::ctar20= "0000000003"
character(10),target::ctar21= "0000000003"
type(ty)::obj

if (trg /= 111) print *,101
write(1,*)"aaaa"
rewind(1)
read(1,*)
inquire (unit=1,ACCESS = ctar,&
         ACTION = ctar1,ASYNCHRONOUS = ctar2,&
         BLANK =  ctar3,DECIMAL = ctar4,&
         DELIM = ctar5,DIRECT = ctar6,&
         ENCODING = ctar7,EXIST = ltar,&
         FORM = ctar8,FORMATTED = ctar9,IOMSG=ctar20,&
         IOSTAT = tar,&
         NAME = ctar10,NAMED = ltar1,NEXTREC = tar1,NUMBER = tar2,&
         OPENED =ltar2,&
         PAD =ctar11,PENDING = ltar3,POS = tar3,&
         POSITION = ctar12,READ = ctar13,&
         READWRITE = ctar14,RECL = tar4,ROUND = ctar15,&
         SEQUENTIAL =  ctar16, SIGN =  ctar21,SIZE = tar5,&
         STREAM = ctar17,UNFORMATTED = ctar18,&
         WRITE =  ctar19)
inquire (IOLENGTH = tar6)aa1

inquire (unit=1,ACCESS = obj%cfun(ctrg),&
         ACTION = obj%cfun(ctrg1),ASYNCHRONOUS = obj%cfun(ctrg2),&
         BLANK =  obj%cfun(ctrg3),DECIMAL = obj%cfun(ctrg4),&
         DELIM = obj%cfun(ctrg5),DIRECT = obj%cfun(ctrg6),&
         ENCODING = obj%cfun(ctrg7),EXIST = obj%lfun(ltrg),&
         FORM = obj%cfun(ctrg8),FORMATTED = obj%cfun(ctrg9),IOMSG=obj%cfun(ctrg20),&
         IOSTAT = obj%fun(trg),&
         NAME = obj%cfun(ctrg10),NAMED = obj%lfun(ltrg1),NEXTREC = obj%fun(trg1),NUMBER = obj%fun(trg2),&
         OPENED =obj%lfun(ltrg2),&
         PAD =obj%cfun(ctrg11),PENDING = obj%lfun(ltrg3),POS = obj%fun(trg3),&
         POSITION = obj%cfun(ctrg12),READ = obj%cfun(ctrg13),&
         READWRITE = obj%cfun(ctrg14),RECL = obj%fun(trg4),ROUND = obj%cfun(ctrg15),&
         SEQUENTIAL =  obj%cfun(ctrg16), SIGN =  obj%cfun(ctrg21),SIZE = obj%fun(trg5),&
         STREAM = obj%cfun(ctrg17),UNFORMATTED = obj%cfun(ctrg18),&
         WRITE =  obj%cfun(ctrg19))
inquire (IOLENGTH = obj%fun(trg6))aa1

if (trg /= tar) print *,400
if (trg1 /= tar1) print *,401
if (trg2 /= tar2) print *,402,trg2
if (trg3 /= tar3) print *,403,trg3
if (trg4 /= tar4) print *,404
if (trg5 /= tar5) print *,405,trg5
if (trg6 /= tar6) print *,406,trg6
if (ctrg /= ctar) print *,103
if (ctrg1 /= ctar1) print *,104
if (ctrg2 /= ctar2) print *,105
if (ctrg3 /= ctar3) print *,106
if (ctrg4 /= ctar4) print *,107
if (ctrg5 /= ctar5) print *,108
if (ctrg6 /= ctar6) print *,109
if (ctrg7 /= ctar7) print *,110
if (ctrg8 /= ctar8) print *,111,ctrg8
if (ltrg .neqv. ltar) print *,112,ltrg
if (ctrg9 /= ctar9) print *,113,ctrg9
if (ctrg10 /= ctar10) print *,114,ctrg10
if (ltrg1 .neqv. ltar1) print *,115,ltrg1
if (ltrg2 .neqv. ltar2) print *,116,ltrg2
if (ctrg11 /= ctar11) print *,117,ctrg11
if (ltrg3 .neqv. ltar3) print *,118,ltrg3
if (ctrg12 /= ctar12) print *,119,ctrg12
if (ctrg13 /= ctar13) print *,120,ctrg13
if (ctrg14 /= ctar14) print *,121,ctrg14
if (ctrg15 /= ctar15) print *,122,ctrg15
if (ctrg16 /= ctar16) print *,123,ctrg16
if (ctrg17 /= ctar17) print *,124,ctrg17
if (ctrg18 /= ctar18) print *,125,ctrg18
if (ctrg19 /= ctar19) print *,126,ctrg19
if (ctrg20 /= ctar20) print *,127,ctrg20
if (ctrg21 /= ctar21) print *,128,ctrg21

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
