procedure()  :: piproc01
character(4) :: piproc01

procedure()  :: pprocp01
character(4) :: pprocp01
pointer      :: pprocp01

pprocp01 => piproc01
print *,pprocp01()

end

function piproc01() result(pirst01)
 character(4) :: pirst01
 pirst01 = 'pass'
end function
