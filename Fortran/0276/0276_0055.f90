interface
function fun(ii,trg)
integer,pointer :: fun
integer :: ii
integer,target :: trg
end function
end interface
integer :: tar(10)=10
integer :: act=30
procedure(fun):: prc
OPEN( 35, FILE='FORT.3', ACCESS='DIRECT', RECL=20,FORM='UNFORMATTED' ) 
        WRITE( 35, REC=1 ) (prc(j,act),j=1,5)
        READ( 35, REC=1 ) (prc(j,trg=act),j=1,5)
CLOSE (35,STATUS='DELETE' )
if(prc(1,act) .ne. act)print*,"101"
if(prc(2,act) .ne. act)print*,"102"
if(prc(3,act) .ne. act)print*,"103"
if(prc(4,act) .ne. act)print*,"104"
if(prc(5,act) .ne. act)print*,"105"
print*,"Pass"
end
function prc(ii,trg)
integer,pointer :: prc
integer :: ii
integer,target :: trg
prc=>trg
end function
