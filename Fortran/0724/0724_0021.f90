character(3)            :: ceproc01
external                :: ceproc01, ceproc02, eproc01
character(3)            :: ceproc02
character(3), external  :: ceproc03

character(2)            :: cpproc01
procedure()             :: cpproc01, cpproc02, pproc01
character(2)            :: cpproc02
procedure(character(2)) :: cpproc03

call sub00(ceproc01)
call sub00(ceproc02)
call sub00(ceproc03)
call sub00(eproc03)

call sub00(cpproc01)
call sub00(cpproc02)
call sub00(cpproc03)
call sub00(pproc03)

end

subroutine sub00(ext)
 external :: ext
end subroutine

function ceproc01() result(cerst01)
 character(3) :: cerst01
 cerst01 = 'rst'
end function

function ceproc02() result(cerst02)
 character(3) :: cerst02
 cerst02 = 'rst'
end function

function ceproc03() result(cerst03)
 character(3) :: cerst03
 cerst03 = 'rst'
end function

function eproc01() result(erst01)
 character(3) :: erst01
 erst01 = 'rst'
end function

function cpproc01() result(cprst01)
 character(2) :: cprst01
 cprst01 = 'cp'
end function

function cpproc02() result(cprst02)
 character(2) :: cprst02
 cprst02 = 'cp'
end function

function cpproc03() result(cprst03)
 character(2) :: cprst03
 cprst03 = 'co'
end function

function pproc01() result(prst01)
 character(2) :: prst01
 prst01 = 'co'
end function
