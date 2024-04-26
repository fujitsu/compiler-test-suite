integer :: ii
logical :: ll
integer :: num=3
character(len=4) :: ch="fort"
character(len=4),target :: tar="data"
inquire( NUM,ACCESS = fun(),EXIST = ll,ID = 13,IOSTAT=ii,SIZE=ii,pending=ll)
inquire( NUM,ACCESS = ch,EXIST = ll,ID = 13,IOSTAT=ii,SIZE=ii,pending=ll)
if(ch .eq. 'fort')print*,"101"
if(ch .ne. tar)print*,"102",ll,ii
print*,"Pass"
contains
function fun()
character(len=:),pointer :: fun
fun=>tar
end function
end
