call sub_inline_case_1()
call sub_inline_case_2()
print *,'pass'
end
subroutine sub_inline_case_1()
integer ,target,save :: it
integer ,pointer :: ip
data ip /it/
it=1
if (ip.ne.1) print *,'err'
end
subroutine sub_inline_case_2()
integer ,target,save :: it
type ty1
integer ,pointer :: ip => it
end type
type(ty1) :: str
it=1
if (str%ip.ne.1) print *,'err'
end
