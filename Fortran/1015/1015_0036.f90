interface
  function func()
    integer,dimension(2,2):: func
  end function
end interface

  integer,dimension(2,2):: i
  i = func()
end

function func()
  integer func
  func = 0
end
