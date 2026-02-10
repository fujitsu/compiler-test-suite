  complex*32 f1,f2
  if (f1(1.0) .ne. (0.0, 1.0)) stop '1'
  if (f2(2) .ne. (1.0, 2.0)) stop '2'
  print *,'PASS'
end program
