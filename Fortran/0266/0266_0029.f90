integer :: n = 10
b1:block
 b2:block
  if (n/2*2 - n) 20,40,20
  20 print*, "odd"
  40 exit b1
  print*, "911"
 end block b2
 print*, "912"
end block b1
print*, "PASS"
end
