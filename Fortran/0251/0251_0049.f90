block
interface
function ff()
integer::ff
end function
end interface

if(ff()==2) print*,'pass'
end block
end

function ff()
integer::ff
ff=2
end function

