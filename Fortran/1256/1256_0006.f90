associate (isrc =>(/'aaaaa'/) )
 block
  integer ::ppp(len(isrc(1)(1:5)))
  if (size(ppp) .ne.len(isrc(1)) ) print *,'ng :',size(ppp)
 end block
end associate
print *,'pass'
end
