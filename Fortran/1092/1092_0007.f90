 subroutine sub()
n=3
associate(nn=>n)
block
  character(nn) ,dimension(nn)::h     (2 )*(2 )
  character(nn) ,dimension(nn)::w*(2) (2 )
if (len(h)/=2) print *,2008
if (size(h)/=2) print *,3008
  h='1234'
  if (h(1)/='12') print *,1001,h(1)
  if (h(2)/='12') print *,1002,h(1)
if (len(w)/=2) print *,2028
if (size(w)/=2) print *,3028
  w='1234'
  if (w(1)/='12') print *,2001,w(1)
end block
end associate

 end

call sub

 print *,'sngg783r : pass'
 end

