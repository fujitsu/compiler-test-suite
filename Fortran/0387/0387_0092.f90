subroutine sub01(di01, di02, dip01, dip02, diproc01, diproc02, diproc01p, diproc02p, dpproc01,  dpproc02, dpproc01p, dpproc02p)
integer, intent(in)            :: di01,      di02,     dip01,     dip02
pointer                        :: dip01,     dip02
integer, external,  intent(in) :: diproc01p, diproc02p
pointer                        :: diproc01p, diproc02p
procedure(integer), intent(in) :: dpproc01p, dpproc02p
pointer                        :: dpproc01p, dpproc02p

call sub02(di01)
call sub02(dip01)
call sub02(diproc01p)
call sub02(dpproc01p)

end subroutine

print *,'pass'

end

subroutine sub02(ii)
 integer :: ii
end subroutine
