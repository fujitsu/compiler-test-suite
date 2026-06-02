  interface aaa
     procedure bbb
  end interface
  call aaa(i)
  if(i/=-1) print *,'err'
  print *,'sngtin01:pass'
contains
  subroutine bbb(i)
   i=-1
  end subroutine bbb
end program
