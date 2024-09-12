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
call sub(str1())
contains
subroutinesub(stra)
type(ty1) ::stra(:),stab(1)
stab(1)=stra(1)
stab=stab
end subroutine
function str1() result(ia)
type(ty1) ::ia(1)
ia%cha='a'
end function
end subroutine

subroutine test02()
type ty1
 character(len=0) cha(10)
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
 character(len=0) cha(10)
end type
type(ty1) ::str1(1)
call sub(str1)
contains
subroutinesub(stra)
type(ty1) ::stra(:)
stra(1)%cha='a'
end subroutine
end subroutine

subroutine test04()
type ty1
 character(len=0) cha(10)
end type
type(ty1) ::str1(1)
i=1
call sub(str1)
contains
subroutinesub(stra)
type(ty1) ::stra(i)
stra(1)%cha='a'
end subroutine
end subroutine

subroutine test05()
type ty1
 character(len=0) cha(10)
end type
type(ty1) ::str1(1)
call sub(str1,1)
contains
subroutinesub(stra,i)
type(ty1) ::stra(i)
stra(1)%cha='a'
end subroutine
end subroutine
