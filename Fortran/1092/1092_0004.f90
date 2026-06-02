 subroutine sub()
n=3
associate(nn=>n)
block
  character(nn) ,dimension(nn+100)::h     (2 )*(2 )
if (len(h)/=2) print *,2008
if (size(h)/=2) print *,3008
  h='1234'
  if (h(1)/='12') print *,1001,h(1)
  if (h(2)/='12') print *,1002,h(2)
end block
end associate

 end

call sub

 print *,'sngg780r : pass'
 end

