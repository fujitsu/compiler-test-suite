interface
  function func()
    integer,dimension(2,3,4):: func
  end function
end interface

  integer,dimension(2,3,4):: i
  i = func()
end

function func()
  integer,dimension(2,3,5):: func
  func = 0
end
