interface
 subroutine prc01_sub()
 end subroutine
 function func01()
 end function
end interface
 procedure(func01) :: ppp
 procedure(prc01_sub) :: sub01

 call sub01()

print *,'pass'

end

subroutine sub01()
end subroutine

function func01()
func01 = 1.0
end function

function ppp()
ppp = 1.0
end function
