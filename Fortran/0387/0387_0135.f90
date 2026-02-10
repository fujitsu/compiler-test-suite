interface
 function ifunc01() result(irst01)
  integer, pointer :: irst01
 end function
end interface

procedure(ifunc01)          :: pproc01
procedure(ifunc01), pointer :: pfuncp01

pfuncp01 => pproc01

if (pfuncp01().ne.1) print *,'no pass'
print *,'pass'

end

function pproc01() result(irst01)
 integer, pointer :: irst01
 integer, target,save  :: itr
 itr = 1
 irst01 => itr
end function
