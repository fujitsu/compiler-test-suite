intrinsic :: iabs
interface iabs
 function ifunc01() result(irst01)
 end function
end interface

print *,iabs(1)

end


function ifunc01() result(irst01)
 irst01 = 1
end function
