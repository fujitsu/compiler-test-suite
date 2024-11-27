character ccc(10)
ccc="a"
call sub01(ccc(1)(1:1)) 
call sub02(ccc(1)(1:1),1) 
call sub03(ccc(1)(1:1),1) 
call sub04(ccc(1)(1:1),1,1) 
call sub05(ccc(1)(1:1)) 
call sub06(ccc(1)(1:1)) 
call sub07(ccc(1)(1:1)) 
call test01()
call test02()
call test03()
call test05()
print *,"pass"
end 

subroutine sub01(cha)
character cha(10)
entry esub01(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
entry esub02(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(10)
entry esub03(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
entry esub04(cha,i,j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(10)
entry esub05(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub06(cha)
character cha(*)
entry esub06(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub07(cha)
character(*) cha(*)
entry esub07(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine test05()
character ccc(10)
ccc="a"
call esub01(ccc(1)(1:1)) 
call esub02(ccc(1)(1:1),1)
call esub03(ccc(1)(1:1),1)
call esub04(ccc(1)(1:1),1,1) 
call esub05(ccc(1)(1:1)) 
call esub06(ccc(1)(1:1)) 
call esub07(ccc(1)(1:1))
end


subroutine test01()
character ccc(10)
ccc="a"
call sub01(ccc(1)(1:1)) 
call sub02(ccc(1)(1:1),1) 
call sub03(ccc(1)(1:1),1) 
call sub04(ccc(1)(1:1),1,1) 
call sub05(ccc(1)(1:1)) 
call sub06(ccc(1)(1:1)) 
call sub07(ccc(1)(1:1)) 
contains
subroutine sub01(cha)
character cha(10)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(10)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(10)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub06(cha)
character cha(*)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub07(cha)
character(*) cha(*)
if (cha(1) .ne. "a") print *,"err"
end subroutine
end subroutine

module mod
contains
subroutine sub01(cha)
character cha(10)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(10)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(10)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub06(cha)
character cha(*)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub07(cha)
character(*) cha(*)
if (cha(1) .ne. "a") print *,"err"
end subroutine
end

subroutine test02()
use mod
character ccc(10)
ccc="a"
call sub01(ccc(1)(1:1))
call sub02(ccc(1)(1:1),1)
call sub03(ccc(1)(1:1),1)
call sub04(ccc(1)(1:1),1,1)
call sub05(ccc(1)(1:1))
call sub06(ccc(1)(1:1))
call sub07(ccc(1)(1:1))
end 


module mod2
contains
subroutine sub01(cha)
character cha(10)
entry esub01(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
entry esub02(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(10)
entry esub03(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
entry esub04(cha,i,j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(10)
entry esub05(cha)   
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub06(cha)
character cha(*)
entry esub06(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub07(cha)
character(*) cha(*)
entry esub07(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine
end

subroutine test03()
use mod2
character ccc(10)
ccc="a"
call esub01(ccc(1)(1:1))
call esub02(ccc(1)(1:1),1)
call esub03(ccc(1)(1:1),1)
call esub04(ccc(1)(1:1),1,1)
call esub05(ccc(1)(1:1))
call esub06(ccc(1)(1:1))
call esub07(ccc(1)(1:1))
end 


