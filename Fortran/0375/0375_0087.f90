module flag
	implicit none
	logical rslt
end module 

module iso_fortran_env
	integer local
end module

subroutine check
	use , intrinsic :: iso_fortran_env
	use  flag

	if (input_unit /= 5) then
		print *, "iso_fortran_env : input_unit NG"
		rslt = .false.
	end if

	if (output_unit /= 6) then
		print *, "iso_fortran_env : output_unit NG"
		rslt = .false.
	end if

	if (error_unit /= 0) then
		print *, "iso_fortran_env : error_unit NG"
		rslt = .false.
	end if

	if (iostat_end /= -1) then
		print *, "iso_fortran_env : iostat_end NG"
		rslt = .false.
	end if

	if (iostat_eor /= -2) then
		print *, "iso_fortran_env : iostat_eor NG"
		rslt = .false.
	end if	

	if (file_storage_size /= 8) then
		print *, "iso_fortran_env : file_storage_size NG"
		rslt = .false.
	end if	

	if (character_storage_size /= 8) then
		print *, "iso_fortran_env : character_storage_size NG"
		rslt = .false.
	end if

	if (numeric_storage_size /= 32) then
		print *, "iso_fortran_env : numeric_storage_size NG"
		rslt = .false.
	end if	

end subroutine

subroutine check2
	use flag
	use, non_intrinsic :: iso_fortran_env
	if (local /= 5) then
		print *, "iso_fortran_env : non_intrinsic NG"
		rslt = .false.
	end if

end subroutine

program test_iso_fortran_env

	use flag
	use, non_intrinsic :: iso_fortran_env

	rslt = .true.
	local = 5

	call check
	call check2
	if (rslt) then
		print *, "pass"
	else
		print *, "iso_fortran_env * NG"
	end if

end program
