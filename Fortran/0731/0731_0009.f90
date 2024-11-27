call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
type ty0
 integer  :: rank
end type 
type ty1
 type (ty0) :: sss(2)
 integer  :: rank
end type 
type (ty1), parameter :: default_var(2) = ty1 (ty0(2),1)

integer, parameter :: var_size1(6)  = transfer(default_var, (/1/))
integer, parameter :: var_size2(3)  = transfer(ty1(ty0(2),1), (/1/))
integer, parameter :: var_size3(6)  = transfer((/default_var/), (/1/))
integer, parameter :: var_size4(3)  = transfer((/ty1(ty0(2),1)/), (/1/))

if (all(var_size1.ne.transfer(default_var, (/1/)) ) ) write(6,*) "NG"
if (all(var_size2.ne.transfer(ty1 (ty0(2),1), (/1/)) ) ) write(6,*) "NG"
if (all(var_size3.ne.transfer((/default_var/), (/1/)) ) ) write(6,*) "NG"
if (all(var_size4.ne.transfer((/ty1 (ty0(2),1)/), (/1/)) ) ) write(6,*) "NG"
end 

subroutine test02()
integer,parameter :: ia(10) = (/1,2,3,4,5,6,7,8,9,10/)
integer, parameter :: var_size1(10) = transfer(ia,(/1/))
integer, parameter :: var_size2(1) = transfer(ia(1),(/1/))
integer, parameter :: var_size3 = transfer(ia(1),1)
if (all(var_size1.ne.transfer(ia,(/1/)))) write(6,*) "NG"
if (all(var_size2.ne.transfer(ia(1),(/1/)))) write(6,*) "NG"
if ((var_size3.ne.transfer(ia(1),1))) write(6,*) "NG"
end 

subroutine test03()
integer, parameter :: var_size1(10) = (/(transfer(i,(/1/)),i=1,10)/)
i=var_size1(10)
i=i
end 
