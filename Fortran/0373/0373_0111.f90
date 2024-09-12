interface sosho
 function ifun(a)
 integer a(:)
 end function
end interface sosho

integer a(10)
data a/1,0,1,0,1,0,1,0,1,0/
if(ifun(a).ne.5)print*,'ng'
print*,'pass'
end

function ifun(a)
integer a(:)
ifun=0
do i=lbound(a,1),ubound(a,1)
  ifun=ifun+a(i)
end do
end function
