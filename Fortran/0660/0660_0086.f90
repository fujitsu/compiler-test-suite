 i=1
 call sub01(i)
 print *,'pass'
 end

subroutine sub01(i)
 integer,intent(in) :: i
 call = sss1(i)
 contains
  function   sss1(j)
  integer, intent(in) :: j
  k=j
  sss1=1         
  end function  
end subroutine

subroutine sub02()
 integer a(10)
 call = sss1(a(k))
 contains
  function   sss1(ii)
   integer ,intent(in) :: ii
   kk=ii
  sss1=1         
  end function
end subroutine

subroutine sub03()
 integer a(10)
 call = sss1(a(k))
 contains
  function   sss1(ii)
   integer ,intent(inout) :: ii
   kk=ii
  sss1=1         
  end function
end subroutine

subroutine sub04()
 integer a(10)
 call = sss1(a(k))
 contains
  function   sss1(ii)
   integer ,intent(out) :: ii
   ii=1  
  sss1=1         
  end function
end subroutine

subroutine sub05()
 integer a(10)
 call = sss1(a(k))
 contains
  function   sss1(ii)
   integer  :: ii
   ii=1  
  sss1=1         
  end function
end subroutine

subroutine sub06(a)
 integer,intent(in) :: a(10)
 call = sss1(a(k))
 contains
  function   sss1(ii)
   integer  :: ii
   ii=1  
  sss1=1         
  end function
end subroutine

subroutine sub07(a)
 integer,intent(out) :: a(10)
 call = sss1(a(k))
 contains
  function   sss1(ii)
   integer  :: ii
   ii=1  
  sss1=1         
  end function
end subroutine

subroutine sub08(a)
 integer,intent(inout) :: a(10)
 call = sss1(a(k))
 contains
  function   sss1(ii)
   integer  :: ii
   ii=1  
  sss1=1         
  end function
end subroutine
