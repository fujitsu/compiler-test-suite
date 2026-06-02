  interface aaa
     procedure aaa
  end interface
  call aaa(i)
  if(i/=-1) print *,'err'
  print *,'sngtin07:pass'
contains
  subroutine aaa(i)
   i=-1
  end subroutine aaa
end program
