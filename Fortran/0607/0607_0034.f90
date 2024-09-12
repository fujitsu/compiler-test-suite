program main
real :: rr = 3.76

associate(a=>int(rr))
 if(a == 3) then
  print *,'PASS'
 else
  print *,'FAIL'
 end if
end associate
end
