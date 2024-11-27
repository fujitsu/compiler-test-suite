  character(len=13):: c, func
  c = func(13)
  print *, c
end

function func(i)
  character(len=i):: func
  func = 'hello, world.'
end function

