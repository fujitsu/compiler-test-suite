interface
  subroutine suba(ra)
  endsubroutine
endinterface
  pointer :: paa
  external :: paa
   paa => suba
   call sub()
    contains
  subroutine sub()
   real :: ra
   ra =1.e0
   call suba(ra)
   if (ra .ne. 2.e0) print *,'fail'
   print *,"pass"
  end subroutine
 end
  subroutine suba(ra)
   real:: ra
    ra = 2.e0
  endsubroutine
