integer ,target :: t
type ty1
 integer ,pointer :: i=>t
end type
type (ty1) ::str
print *,'pass'
end
