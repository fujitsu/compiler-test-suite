c
c 
      call s1 
      print *,'pass'
      end
      module m_1
      contains
       function ary_fun(c,j) result(return_value)
       character*(j) c
       character (len=len(c)),dimension(len(c)):: return_value
       if (len(c)/= 2)print *,'fail'
       if (len(return_value)/=2) print *,'fail'
       if (ubound(return_value,dim=1)/=2)print *,'fail'
       if (lbound(return_value,dim=1)/=1)print *,'fail'
       if (c/='12')print *,'fail'
       return_value(1)=c   
       return_value(2)='34'
       end function ary_fun
      end module m_1
      subroutine s1
      use m_1
      character*2,parameter::c='12'
      call chk(ary_fun(c,len(c))//ary_fun(c,len(c)))
      end
      subroutine chk(a)
      character(*) a(*)
      if (len(a)/=4)print *,'fail'
      if (a(1)/='1212')print *,'fail'
      if (a(2)/='3434')print *,'fail'
      end
