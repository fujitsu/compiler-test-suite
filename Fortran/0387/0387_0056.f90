call test01()
print *,'pass'
end

module mmm
 type ty3
  integer :: ty3
  procedure(sin),nopass,pointer :: iii
 end type
 type(ty3) :: stra
end module

subroutine test01()
use mmm
stra=ty3(iii=null(),ty3=1)

end
