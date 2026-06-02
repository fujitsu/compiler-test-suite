interface
 function ifun(i)
   integer :: i
 end function
end interface
procedure(ifun),pointer :: ipp
procedure(ifun) :: ifpp
ipp=> ifpp
i= ipp(1)
if (i.ne.1) print *,'fail'
print *,"pass"
end
 function ifun(i)
   integer :: i
   ifun=i
 end function

function ifpp(i)
   integer :: i
   ifpp=i
 end function

