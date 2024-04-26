procedure(fun),pointer :: prc
integer,target :: tar=150
prc=>fun
if(tar .ne. 150)print*,"101"
open(newunit=prc(),status='scratch')
if(tar .eq. 150)print*,"102"
if(tar >=-1)print*,"103"
print*,"Pass"
contains
function fun()
integer,pointer :: fun
fun=>tar
end function
end
