intrinsic       :: iabs
procedure(iabs) :: piabs

print *,piabs(1)

end

pure function piabs(p01_arg01) result(prst01)
 integer, intent(in) :: p01_arg01
 integer             :: prst01
 prst01 = iabs(p01_arg01)
end function

