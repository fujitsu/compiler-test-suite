call test01()
print *,'pass'
end

subroutine test01()
type ty1
 sequence
 integer,pointer :: ip=>null()
 integer         :: ia=100
 integer         :: ib(10)=(/1,2,3,4,5,6,7,8,9,10/)
end type
type ty2
 sequence
 type(ty1) ,pointer:: ppp
 integer         :: iaa = 2
end type
type(ty2) :: str
allocate(str%ppp) 
if (str%ppp%ia.ne.100) write(6,*) "NG"
do i=1,10
if (str%ppp%ib(i).ne.i) write(6,*) "NG"
end do
end subroutine
