character(*),parameter::x='aaaaa'
associate (isrc =>x       )
 block
  integer ::ppp(len(isrc(1:5)))
  if (size(ppp) .ne.len(isrc(1:5)) ) print *,'ng :',size(ppp)
 end block
end associate
associate (isrc =>'aaaaa' )
 block
  integer ::ppp(len(isrc(1:5)))
  if (size(ppp) .ne.len(isrc(1:5)) ) print *,'ng :',size(ppp)
 end block
end associate
associate (isrc =>x(:)       )
 block
  integer ::ppp(len(isrc(1:5)))
  if (size(ppp) .ne.len(isrc(1:5)) ) print *,'ng :',size(ppp)
 end block
end associate
associate (isrc =>'aaaaa'(:) )
 block
  integer ::ppp(len(isrc(1:5)))
  if (size(ppp) .ne.len(isrc(1:5)) ) print *,'ng :',size(ppp)
 end block
end associate
print *,'sngg137r : pass'
end
