block
interface operator(+)
function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
end function
end interface operator(+)

if('ch' + 'abc'==5) print*,'pass1/2'
end block

block
interface operator(+)
function ff2(d1,d2)
integer::ff2
character(len=*),intent(in) :: d1,d2
end function
end interface operator(+)

if('ch' + 'abc'==5) print*,'pass2/2'
end block
end

function ff2(d1,d2)
integer::ff2
character(len=*),intent(in) :: d1,d2
ff2=len(d1)+len(d2)
end function

function ff(d1,d2)
integer::ff
character(len=*),intent(in) :: d1,d2
ff=len(d1)+len(d2)
end function

