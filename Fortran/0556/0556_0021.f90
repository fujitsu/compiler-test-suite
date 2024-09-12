type base
integer ii
end type
 
type,extends(base) :: deriv
integer jj
end type
 
class(base),pointer :: cptr
type(deriv),target :: trg_der
type(base),target :: trg_base
 
cptr=>trg_der
 
select type(cptr)
ClAsS Is(deriv)
cptr%ii = 2
cptr%jj = 3
if ((cptr%ii .EQ. 2) .AND. (cptr%jj .EQ. 3)) print *,"PASS"
end select
 
cptr=> trg_base
 
select type(cptr)
CLASS IS(base)
cptr%ii = 2
if (cptr%ii .EQ. 2) print *,"PASS"
end select
end
