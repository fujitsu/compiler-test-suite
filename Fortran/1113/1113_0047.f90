integer(4), target::trg=10.5
character(2),target :: chtar='ok'
integer  :: n1=5

integer :: re_iostat=10.5
character(2) :: ch_iomsg='ok'

open(newunit=nout,file="fort.7",iomsg=chf())
open(newunit=nout,file="fort.8",iomsg=ch_iomsg)
if(chtar /= ch_iomsg)print*,"102",ch_iomsg

read(6,*,iostat=f())n1
read(6,*,iostat=re_iostat)n1
if(trg .eq. 10.5)print*,"103",trg,n1,nout
if(trg .ne. re_iostat)print*,"104",re_iostat
close(nout,status="delete")
print *,"Pass"
contains
function f()
 integer(4), pointer::f
 f=>trg
 end function
function chf()
 character(2), pointer::chf
 chf=>chtar
 end function
end
