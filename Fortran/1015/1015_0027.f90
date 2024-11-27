function func()
  integer,dimension(2,2):: func

  func = reshape((/1,2,3,4/),(/2,2/))
end function

integer,dimension(2,2):: a
integer func

a = func()
if((a(1,1).eq.1).and.(a(2,1).eq.2).and.(a(1,2).eq.3).and.(a(2,2).eq.4)) then
  print *, 'ok'
else
  print *, 'ng', a
end if
end
