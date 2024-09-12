interface operator(*)
function a1(d1,d2)
integer::a1
character(len=*),pointer,intent(in) :: d1,d2
end function
end interface operator(*)
interface operator(-)
function a2(d1,d2)
integer::a2
character(len=*),pointer,intent(in) :: d1,d2
end function
end interface operator(-)

character(2),target::ch1
character(3),target::ch2
character(7),target::ch3
character(3),target::ch4
ch1="ch"
ch2="abc"
ch3="fantasy"
ch4="for"
if(ch1*ch2==5)print*,"Pass"
if(ch3-ch4==21)print*,"Pass"
end

function a1(d1,d2)
integer::a1
character(len=*),pointer,intent(in) :: d1,d2
if (.not.associated(d1))print*,101
if (.not.associated(d2))print*,102
if (LEN(d1)/=2 .or. LEN(d2)/=3)print*,103
a1=len(d1)+len(d2)
end function

function a2(d1,d2)
integer::a2
character(len=*),pointer,intent(in) :: d1,d2
if (.not.associated(d1))print*,104
if (.not.associated(d2))print*,105
if (LEN(d1)/=7 .or. LEN(d2)/=3)print*,106
a2=len(d1)*len(d2)
end function
