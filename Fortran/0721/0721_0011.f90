interface
  function funa() result(ra)
   real :: ra
  endfunction
endinterface
  pointer :: paa
  external :: paa
   paa => funa
   call sub()
    contains
  subroutine sub()
   real :: ra
   ra =1.e0
   ra = funa()
   if (ra .ne. 2.e0) print *,'fail'
   print *,"pass"
  end subroutine
 end
  function funa() result(ra)
   real :: ra
   ra = 2.e0
  end
