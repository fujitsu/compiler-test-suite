call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end 

subroutine test01()
type ty1
 character(len=0) cha
end type
type(ty1) ::str1(1)
call sub(str1)
contains
subroutinesub(stra)
type(ty1) ::stra(:)
stra%cha='a'
end subroutine
end subroutine

subroutine test02()
type ty1
 character(len=0) cha
end type
type(ty1) ::str1(1)
call sub(str1)
contains
subroutinesub(stra)
type(ty1) ::stra(*)
stra(1)%cha='a'
end subroutine
end subroutine

subroutine test03()
type ty1
 character(len=0) cha
end type
type(ty1) ::str1(1)
call sub(str1)
contains
subroutinesub(stra)
type(ty1) ::stra(1)
stra%cha='a'
end subroutine
end subroutine

subroutine test04()
type ty1
 character(len=0) cha
end type
type(ty1) ::str1(1)
i=1
call sub(str1)
contains
subroutinesub(stra)
type(ty1) ::stra(i)
stra%cha='a'
end subroutine
end subroutine

subroutine test05()
type ty1
 character(len=0) cha
end type
type(ty1) ::str1(1)
call sub(str1,1)
contains
subroutinesub(stra,i)
type(ty1) ::stra(i)
stra%cha='a'
end subroutine
end subroutine
