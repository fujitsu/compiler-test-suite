integer arr1(3,2,1)
integer arr2(3,2,1)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
call sub08()
call sub09()
call sub10()
print *,"pass"
end
subroutine sub01()
integer arr1(-1:3,-2:2,-3:1)
integer arr2(-1:3,-2:2,-3:1)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub02()
integer arr1(-4:3,-2:6,-3:5)
integer arr2(-4:3,-2:6,-3:5)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub03()
integer arr1(-1:3,-2:2,-3:1)
integer arr2(-1:3,-2:2,-3:1)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub04()
integer arr1(-1:3,-2:2,-3:1)
integer arr2(-1:3,-2:2,-3:1)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
end

subroutine sub05()
integer arr1(-4:3,0,-3:5)
integer arr2(-4:3,0,-3:5)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub06()
integer arr1(-4:3,0,0)
integer arr2(-4:3,0,0)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub07()
integer arr1(0,0,0)
integer arr2(0,0,0)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub08()
integer arr2(-4:3,-2:6,0)
integer arr1(-4:3,-2:6,0)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub09()
integer arr2(0,-2:6,-3:5)
integer arr1(0,-2:6,-3:5)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

subroutine sub10()
integer arr1(0,-2:6,0)
integer arr2(0,-2:6,0)
if (ubound(arr1,1).ne.ubound(arr2,1)) call errtra
if (ubound(arr1,2).ne.ubound(arr2,2)) call errtra
if (ubound(arr1,3).ne.ubound(arr2,3)) call errtra
if (lbound(arr1,1).ne.lbound(arr2,1)) call errtra
if (lbound(arr1,2).ne.lbound(arr2,2)) call errtra
if (lbound(arr1,3).ne.lbound(arr2,3)) call errtra
end

