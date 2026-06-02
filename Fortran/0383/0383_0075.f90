function func() 
  character(:),pointer :: func
  allocate(character(5)::func)
  func = '12345'
end function

interface
function func() 
  character(:),pointer :: func
end function
end interface
procedure(func),pointer :: ppp
ppp=>func
if ( ppp() .ne. "12345" ) print *,'fail'
print *,'ok'
end
