 subroutine sub()
n=3
associate(nn=>n)
block
  character(nn) ,dimension(nn)::w*(2) (2 )
if (len(w)/=2) print *,2028
if (size(w)/=2) print *,3028
  w='1234'
  if (w(1)/='12') print *,2001,w(1)
end block
end associate

 end

call sub

 print *,'sngg786r : pass'
 end

