interface
 function fun1()
 end function
end interface

TYPE ty1
 CONTAINS
 PROCEDURE,NOPASS :: proc_ptr=>fun1
END TYPE

type(ty1) :: sss01
print *,sss01%proc_ptr()
end

function fun1()
 fun1 = 1.0
end function
