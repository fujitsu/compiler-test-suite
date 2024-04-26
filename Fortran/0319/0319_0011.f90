module mod
contains
  function m_f(ii)
  entry m_fe(ii)
  ii=20
  m_fe=1.0
  end function  
  subroutine s(i)
  c=m_fe(i)
  end subroutine
end module

use mod 
call s(i) 
print *,i
end 
