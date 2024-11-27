intrinsic :: nint
intrinsic :: idnint
intrinsic :: dprod

procedure(),  pointer         :: pprocp01
type ty01
 procedure(), pointer, nopass :: pprocp01
end type

type (ty01) :: tt01

pprocp01 => nint
pprocp01 => idnint
pprocp01 => dprod

tt01 = ty01(nint)
tt01 = ty01(idnint)
tt01 = ty01(dprod)

end
