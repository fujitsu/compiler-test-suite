function ifun()
  ifun = 100
end function
interface
  function ifun()
  end function
end interface
procedure(),pointer:: i1
i1=>ifun
if (100 .ne. i1()) print *,'fail'
print *,'pass '
end 
