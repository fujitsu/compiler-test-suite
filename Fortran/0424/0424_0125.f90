module m
contains
  function f1()
    integer, external, pointer :: f1,f2
  entry f2()
    f2=>ff
  end function
  integer function ff()
    ff=4
  end function
end

print *,'pass'
end
