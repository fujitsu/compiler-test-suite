  interface aaa
     procedure bbb
  end interface
  if(bbb(1)/=2) print *,'err'
  print *,'sngtin02:pass'
contains
  function  bbb(i)
    integer ::bbb,i
    bbb=i*2
  end function bbb
end program
