procedure(integer) :: pinteger

call sub01(pinteger)

end

subroutine sub01(dplogical)
 procedure(logical) :: dplogical
end subroutine

function pinteger() result(prst01)
 integer :: prst01
 prst01 = 1
end function
