block
interface operator(+)
function ff(d1)
integer::ff
character(len=*),intent(in) :: d1
end function
end interface operator(+)

if((+'abc')==4) print*,'pass'
end block
end

function ff(d1)
integer::ff
character(len=*),intent(in) :: d1
ff=len(d1)+1
end function

