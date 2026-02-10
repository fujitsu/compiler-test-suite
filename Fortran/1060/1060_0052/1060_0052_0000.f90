interface
function f1(rarg) result(rf)
character*(10) rf
end function
function f2(iarg) result(rf)
character*(10) rf
end function
end interface
  if (f1(1.0) .ne. "000") stop '1'
  if (f2(2) .ne. "111") stop '2'
  print *,'PASS'
end program
