 integer i(10)
 i=1
 call sub01(i)
 call sub02(i)
 call sub03(i)
 call sub04(i)
 print *,'pass'
 end

subroutine sub01(a)
 integer a(10)   
 call = sss1(a)
 contains
  function   sss1(ii)
   integer ,intent(in) :: ii(10) 
   sss1=1         
   call = sss2(ii(1))
  end function
  function   sss2(ii)
   integer ,intent(in) :: ii
   sss2=ii        
  end function
end subroutine

subroutine sub02(a)
interface 
  function   sss2(ii)
   integer ,intent(in) :: ii
  end function
end interface
 integer a(10)   
 call = sss1(a)
   call = sss2(a(1))
 contains
  function   sss1(ii)
   integer ,intent(in) :: ii(10) 
   sss1=1         
   call = sss2(ii(1))
  end function
end subroutine
  function   sss2(ii)
   integer ,intent(in) :: ii
   sss2=ii        
  end function

module mod03
contains
  function   sss1(ii)
   integer ,intent(in) :: ii(10) 
   sss1=1         
   call = sss2(ii(1))
  end function
  function   sss2(ii)
   integer ,intent(in) :: ii
   sss2=ii        
  end function
end
subroutine sub03(a)
 use mod03
 integer a(10)   
 call = sss1(a)
   call = sss2(a(1))
end subroutine

module mod04
contains
  function   sss1(ii)
   integer ,intent(in) :: ii(10) 
   sss1=1         
   call = sss2(ii(1))
  end function
  function   sss2(ii)
   integer ,intent(in) :: ii
   sss2=ii        
  end function
end
subroutine sub04(a)
 use mod04
 integer ,intent(in) ::a(10)   
 call = sss1(a)
 call = sss2(a(1))
end subroutine
