interface 
  function func()
    integer,pointer:: func
  end function
end interface

integer,pointer:: p

p => func()
print *, p
end

function func()
  integer,dimension(1):: func

  func = 10
end
