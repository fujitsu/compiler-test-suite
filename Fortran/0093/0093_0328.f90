complex, save :: i
integer:: j
 i = (6.43,3.21)
if(i%re .ne. 6.43) goto 6
  j = 1
  6 if (j .ne. 1)  PRINT*,"101"
  print*,"PASS"
end
