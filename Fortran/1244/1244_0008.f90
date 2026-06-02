  interface aaa
     procedure aaa,bbb
  end interface
  if(aaa(1)/=2) print *,'err'
  print *,'sngtin10:pass'
contains
  function  bbb(i) result(aaa)
    integer ::aaa,i
    aaa=i*2
  end function bbb
function aaa()
end function aaa
end program
