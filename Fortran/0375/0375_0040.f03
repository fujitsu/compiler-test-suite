function  s() result(c) 
character  c
entry ss() result(c) bind(c)
c='1'
end
interface 
  function  ss() result(c) bind(c)
    character  c
  end function
end interface
character s
if (s()/='1')print *,'error-1'
if (ss()/='1')print *,'error-2'
print *,'pass'
end
