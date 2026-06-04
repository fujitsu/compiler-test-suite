call sss()
end
subroutine sss()
interface
  function func1(ii)
    integer :: func1
  end function
end interface
external :: p1
pointer :: p1
p1=>func1
ii1 = 1
ii2 = 2
ii1 = func1(ii1)
ii2 = func1(ii2)
if (ii1.eq.ii2) print *,'fail'
print *,"pass"
end
 function func1(ii)
  integer :: func1
  func1 =ii
 end function
