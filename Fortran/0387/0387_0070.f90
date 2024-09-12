interface
 function px1(i)
 end function
end interface

procedure (px1),pointer :: aaa
type ty1
 procedure (px1),pointer,nopass :: bbb
end type
type (ty1) :: ttt
ttt = ty1(px1)

aaa => null()
aaa => px1
if (aaa(1).ne.1.0) print *,'error'

print *,'pass'

end

function px1(i)
 px1 = real(i)
end function
