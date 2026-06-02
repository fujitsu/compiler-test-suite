  interface aaa
     procedure aaa,bbb
  end interface
  call aaa(i)
  if(i/=-1) print *,'err'
  print *,'sngtin09:pass'
contains
  subroutine bbb(i)
   i=-1
  end subroutine bbb
subroutine aaa
end subroutine aaa
end program
