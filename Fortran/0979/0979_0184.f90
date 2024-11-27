call sub01("a") 
call sub02("a",1) 
call sub03("a",1) 
call sub04("a",1,1) 
call sub05("a") 
call sub06("a") 
call sub07("a") 
call test01()
call test02()
call test03()
call test05()
print *,"pass"
end 

subroutine sub01(cha)
character cha(1)
entry esub01(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
entry esub02(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(1)
entry esub03(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
entry esub04(cha,i,j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(1)
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
call esub01("a") 
call esub02("a",1)
call esub03("a",1)
call esub04("a",1,1) 
call esub05("a") 
call esub06("a") 
call esub07("a")
end


subroutine test01()
call sub01("a") 
call sub02("a",1) 
call sub03("a",1) 
call sub04("a",1,1) 
call sub05("a") 
call sub06("a") 
call sub07("a") 
contains
subroutine sub01(cha)
character cha(1)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(1)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(1)
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
character cha(1)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(1)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(1)
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
call sub01("a")
call sub02("a",1)
call sub03("a",1)
call sub04("a",1,1)
call sub05("a")
call sub06("a")
call sub07("a")
end 


module mod2
contains
subroutine sub01(cha)
character cha(1)
entry esub01(cha)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub02(cha,i)
character cha(i)
entry esub02(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub03(cha,i)
character(len=i) cha(1)
entry esub03(cha,i)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub04(cha,i,j)
character(len=i) cha(j)
entry esub04(cha,i,j)
if (cha(1) .ne. "a") print *,"err"
end subroutine

subroutine sub05(cha)
character(*) cha(1)
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
call esub01("a")
call esub02("a",1)
call esub03("a",1)
call esub04("a",1,1)
call esub05("a")
call esub06("a")
call esub07("a")
end 


