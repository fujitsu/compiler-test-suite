 subroutine sub()
n=3
associate(nn=>n)
block
  character(nn) ,dimension(nn+100)::h     (2 )*(2 )
if (len(h)/=2) print *,2008
if (size(h)/=2) print *,3008
end block
end associate

 end

call sub

 print *,'sngg778r : pass'
 end

