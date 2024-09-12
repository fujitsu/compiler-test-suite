 i=1
 print *,'pass'
 end

subroutine sub01()
 character*10 cha
 call = sss1(cha(i:))
 contains
  function   sss1(ii)
   character*10 ,intent(in) :: ii
   character*10 aaa
   aaa=ii
   sss1=1         
  end function
end subroutine

subroutine sub02()
 character*10 cha
 call = sss1(cha(:i))
 contains
  function   sss1(ii)
   character*10 ,intent(in) :: ii
   character*10 aaa
   aaa=ii
   sss1=1         
  end function
end subroutine

subroutine sub03()
 character*10 cha
 call = sss1(cha(0+i:))
 contains
  function   sss1(ii)
   character*10 ,intent(in) :: ii
   character*10 aaa
   aaa=ii
   sss1=1         
  end function
end subroutine

subroutine sub04()
 pointer (i,j)    
 call = sss1(j)
 contains
  function   sss1(ii)
   integer ,intent(in) :: ii
   ia=ii
   sss1=1         
  end function
end subroutine

subroutine sub05()
 character*10 cha
 call = sss1(cha(i:))
 contains
  function   sss1(ii)
   character*10 ,intent(inout) :: ii
   character*10 aaa
   aaa=ii
   sss1=1         
  end function
end subroutine

subroutine sub06()
 character*10 cha
 call = sss1(cha(:i))
 contains
  function   sss1(ii)
   character*10 ,intent(inout) :: ii
   character*10 aaa
   aaa=ii
   sss1=1         
  end function
end subroutine

subroutine sub07()
 character*10 cha
 call = sss1(cha(0+i:))
 contains
  function   sss1(ii)
   character*10 ,intent(inout) :: ii
   character*10 aaa
   aaa=ii
   sss1=1         
  end function
end subroutine

subroutine sub08()
 pointer (i,j)    
 call = sss1(j)
 contains
  function   sss1(ii)
   integer ,intent(inout) :: ii
   ia=ii
   sss1=1         
  end function
end subroutine
