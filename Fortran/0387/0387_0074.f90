module mod01
 contains
  subroutine msub01(i) bind(c, name = 'ms01')
   integer :: i
  end subroutine
end module

print *,'pass'

end

function ofunc01()
 use mod01
 procedure(msub01), pointer :: ofunc01
 ofunc01 => msub01
end function

function ofunc02()
 interface
  subroutine osub01(i) bind(c, name = 'os01')
   integer :: i
  end subroutine
 end interface
 procedure(osub01), pointer :: ofunc02
 ofunc02 => osub01
end function

subroutine osub01(i) bind(c, name = 'os01')
 integer :: i
end subroutine
