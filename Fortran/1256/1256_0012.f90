integer :: i5=5
integer :: i1=1
associate (isrc =>(/'aaaaa'/) )
 block
  integer ::ppp(len(isrc(1)(i1:i5)))
  if (size(ppp) .ne.len(isrc(1)) ) print *,'ng :',size(ppp)
 end block
end associate
print *,'pass'
end
