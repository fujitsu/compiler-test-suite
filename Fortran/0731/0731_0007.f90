call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
type ty1
    integer                      :: size
    integer                      :: rank
end type 
type (ty1), parameter :: default_var = ty1 (2,1)

integer, parameter :: var_size1(2)  = transfer(default_var, (/1/))
integer, parameter :: var_size2(2)  = transfer(ty1 (2,1), (/1/))
integer, parameter :: var_size3(2)  = transfer((/default_var/), (/1/))
integer, parameter :: var_size4(2)  = transfer((/ty1 (2,1)/), (/1/))

if (all(var_size1.ne.transfer(default_var, (/1/)) ) ) write(6,*) "NG"
if (all(var_size2.ne.transfer(ty1 (2,1), (/1/)) ) ) write(6,*) "NG"
if (all(var_size3.ne.transfer((/default_var/), (/1/)) ) ) write(6,*) "NG"
if (all(var_size4.ne.transfer((/ty1 (2,1)/), (/1/)) ) ) write(6,*) "NG"
end 

subroutine test02()
type ty1
    integer                      :: size(2)
    integer                      :: rank
end type 
type (ty1), parameter :: default_var = ty1 (2,1)

integer, parameter :: var_size1(3)  = transfer(default_var, (/1/))
integer, parameter :: var_size2(3)  = transfer(ty1 (2,1), (/1/))
integer, parameter :: var_size3(3)  = transfer((/default_var/), (/1/))
integer, parameter :: var_size4(3)  = transfer((/ty1 (2,1)/), (/1/))

if (all(var_size1.ne.transfer(default_var, (/1/)) ) ) write(6,*) "NG"
if (all(var_size2.ne.transfer(ty1 (2,1), (/1/)) ) ) write(6,*) "NG"
if (all(var_size3.ne.transfer((/default_var/), (/1/)) ) ) write(6,*) "NG"
if (all(var_size4.ne.transfer((/ty1 (2,1)/), (/1/)) ) ) write(6,*) "NG"
end

subroutine test03()
type ty1
    integer                      :: size
    integer                      :: rank(2)
end type 
type (ty1), parameter :: default_var = ty1 (2,1)

integer, parameter :: var_size1(3)  = transfer(default_var, (/1/))
integer, parameter :: var_size2(3)  = transfer(ty1 (2,1), (/1/))
integer, parameter :: var_size3(3)  = transfer((/default_var/), (/1/))
integer, parameter :: var_size4(3)  = transfer((/ty1 (2,1)/), (/1/))

if (all(var_size1.ne.transfer(default_var, (/1/)) ) ) write(6,*) "NG"
if (all(var_size2.ne.transfer(ty1 (2,1), (/1/)) ) ) write(6,*) "NG"
if (all(var_size3.ne.transfer((/default_var/), (/1/)) ) ) write(6,*) "NG"
if (all(var_size4.ne.transfer((/ty1 (2,1)/), (/1/)) ) ) write(6,*) "NG"
end
