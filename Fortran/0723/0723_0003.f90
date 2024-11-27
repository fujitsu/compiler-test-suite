end
module mo
contains
subroutine sub01()
interface
function ent01() bind(c,name="bind") 
end function
end interface
end subroutine sub01
end
function sub02()
entry ent01() bind(c,name="binda")
end function sub02
