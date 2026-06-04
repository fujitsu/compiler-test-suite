character(len=10)::ch ="sushilsati"
integer::arr(3,5)
call sub(arr)
contains 
subroutine sub(aa)
integer::aa(..)
if(ch(ubound(aa,1):5).ne.ch(3:5))print*,"101"
if(ch(lbound(aa,2):10).ne.ch(1:10))print*,"102"
if(ch(lbound(aa,2):ubound(aa,1)).ne.ch(1:3))print*,"103"
print*,"pass"
end subroutine
end

