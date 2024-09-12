subroutine s1
  character(1),target::ta(2)=(/'c','d'/)
type x
  integer(8) ::x1=3
  character(1),pointer::pa(:)
  integer(8) ::x2=4
end type
type(x)::v
if (v%x1/=3)print *,'error-21'
if (v%x2/=4)print *,'error-24'
v%pa=>ta
if (len(v%pa)/=1)print *,'error-11'
if (any(v%pa/=(/'c','d'/)))print *,'error-12'
if (.not.associated(v%pa))print *,'error-13'
if (any(ubound(v%pa)/=2))print *,'error-14'
if (any(shape(v%pa)/=2))print *,'error-15'
if (v%x1/=3)print *,'error-21'
if (v%x2/=4)print *,'error-24'
end
call s1
print *,'pass'
end
