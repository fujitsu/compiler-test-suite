external                   :: eproc01
external                   :: eprocp01
pointer                    :: eprocp01
integer, external          :: ieproc01
integer, external, pointer :: ieprocp01
real   , external          :: reproc01
real   , external, pointer :: reprocp01

eprocp01  => eproc01

ieprocp01 => ieproc01

reprocp01 => reproc01

end

subroutine eproc01()
end subroutine

function ieproc01() result(ierst01)
 integer :: ierst01
 ierst01 = 1
end function

function reproc01() result(rerst01)
 integer :: rerst01
 rerst01 = 1.0
end function
