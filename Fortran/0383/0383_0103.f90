function proc()
  proc = 1.0
end function
interface
function proc()
end function
end interface
procedure(real),pointer:: aaa
aaa=>proc
if ( 1.0 .ne. aaa()) print *,'fail'
print *,'pass '
end
