call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end 

subroutine test01()
 integer,dimension(0) :: cha
call sub(cha )
contains
subroutinesub(stra)
integer,dimension(:) :: stra
end subroutine
end subroutine

subroutine test02()
 integer,dimension(0) :: cha
call sub(cha )
contains
subroutinesub(stra)
integer,dimension(0) :: stra
end subroutine
end subroutine

subroutine test03()
 integer,dimension(0) :: cha
i=0
call sub(cha )
contains
subroutinesub(stra)
integer,dimension(i) :: stra
end subroutine
end subroutine

subroutine test04()
 integer,dimension(0) :: cha
call sub(cha ,0)
contains
subroutinesub(stra,i)
integer,dimension(i) :: stra
end subroutine
end subroutine

subroutine test05()
 integer,dimension(0) :: cha
call sub(cha )
contains
subroutinesub(stra)
integer,dimension(*) :: stra
end subroutine
end subroutine
