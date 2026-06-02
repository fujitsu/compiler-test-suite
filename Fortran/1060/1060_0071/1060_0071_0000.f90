interface
function f1() result(rf)
character*(10) rf
end function
function f2() result(rf)
character*(10) rf
end function
end interface
  if (f1() .ne. "000") stop '1'
  if (f2() .ne. "111") stop '2'
  print *,'PASS'
end program
