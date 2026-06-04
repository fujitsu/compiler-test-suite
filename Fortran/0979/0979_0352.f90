call test01()
call test02()
call test03()
print *,"pass"
end 

function   sub01(cha)
character cha(1)
entry esub01(cha)
if (cha(1) .ne. "a") print *,"err"
sub01 =1
end function  

function   sub02(cha,i)
character cha(i)
entry esub02(cha,i)
if (cha(1) .ne. "a") print *,"err"
sub02 =1
end function  

function   sub03(cha,i)
character(len=i) cha(1)
entry esub03(cha,i)
if (cha(1) .ne. "a") print *,"err"
sub03 =1
end function  

function   sub04(cha,i,j)
character(len=i) cha(j)
entry esub04(cha,i,j)
if (cha(1) .ne. "a") print *,"err"
sub04 =1
end function  

function   sub05(cha)
character(*) cha(1)
entry esub05(cha)
if (cha(1) .ne. "a") print *,"err"
sub05 =1
end function  

function   sub06(cha)
character cha(*)
entry esub06(cha)
if (cha(1) .ne. "a") print *,"err"
sub06 =1
end function  

function   sub07(cha)
character(*) cha(*)
entry esub07(cha)
if (cha(1) .ne. "a") print *,"err"
sub07 =1
end function  

module moda
contains
function   csub01(cha,i)
character cha(i)
character(size(cha,1)) csub01,esub01
entry esub01(cha,i)
if (cha(1) .ne. "a") print *,"err"
csub01 ="a"
end function
end 
subroutine test01()
call =sub01("a") 
call =sub02("a",1)
call =sub03("a",1)
call =sub04("a",1,1) 
call =sub05("a") 
call =sub06("a") 
call =sub07("a")
call =esub01("a")
call =esub02("a",1)
call =esub03("a",1)
call =esub04("a",1,1)
call =esub05("a")
call =esub06("a")
call =esub07("a")
end

module mod
contains
function   sub01(cha)
character cha(1)
entry esub01(cha)
if (cha(1) .ne. "a") print *,"err"
sub01 =1
end function  

function   sub02(cha,i)
character cha(i)
entry esub02(cha,i)
if (cha(1) .ne. "a") print *,"err"
sub02 =1
end function  

function   sub03(cha,i)
character(len=i) cha(1)
entry esub03(cha,i)
if (cha(1) .ne. "a") print *,"err"
sub03 =1
end function  

function   sub04(cha,i,j)
character(len=i) cha(j)
entry esub04(cha,i,j)
if (cha(1) .ne. "a") print *,"err"
sub04 =1
end function  

function   sub05(cha)
character(*) cha(1)
entry esub05(cha)
if (cha(1) .ne. "a") print *,"err"
sub05 =1
end function  

function   sub06(cha)
character cha(*)
entry esub06(cha)
if (cha(1) .ne. "a") print *,"err"
sub06 =1
end function  

function   sub07(cha)
character(*) cha(*)
entry esub07(cha)
if (cha(1) .ne. "a") print *,"err"
sub07 =1
end function  
end

subroutine test02()
use mod
call =sub01("a") 
call =sub02("a",1)
call =sub03("a",1)
call =sub04("a",1,1) 
call =sub05("a") 
call =sub06("a") 
call =sub07("a")
call =esub01("a")
call =esub02("a",1)
call =esub03("a",1)
call =esub04("a",1,1)
call =esub05("a")
call =esub06("a")
call =esub07("a")
end

subroutine test03()
use moda
character call
call =csub01("a",1) 
call =esub01("a",1) 
end 
