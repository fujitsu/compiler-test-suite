integer :: i5=5
integer :: i1=1
associate (isrc =>(/1,2,3,4,5/) )
 block
  integer ::ppp(size(isrc(i1:i5)))
  if (size(ppp) .ne.size(isrc(1:5)) ) print *,'ng :',size(ppp)
 end block
end associate
print *,'pass'
end
