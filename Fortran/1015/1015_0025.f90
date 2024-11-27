real func
integer a

a = int(func())
if(abs(a-3.0)<0.0001) then
  print *, 'ok'
else
  print *, 'ng', a
end if
end

integer function func()
  func = 3
end function
