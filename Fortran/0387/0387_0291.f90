subroutine sub(ipp)
interface
 function ifun(i)
   integer,pointer :: i
 end function
end interface
procedure(ifun),pointer :: ipp
ipp=>null()
i = ipp(null())
i = ifun(null())
if (i.ne.1) print *,'fail'
end
print *,"pass"
end
 function ifun(i)
   integer,pointer :: i
   allocate(i)
   i=1
   ifun=1
 end function
