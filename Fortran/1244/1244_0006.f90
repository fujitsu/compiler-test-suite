  interface aaa
     procedure aaa
  end interface
  if(aaa(1)/=2) print *,'err'
  print *,'sngtin08:pass'
contains
  function  aaa(i)
    integer ::aaa,i
    aaa=i*2
  end function aaa
end program
