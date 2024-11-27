call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
print *,'pass'
end

subroutine sub01()
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
type (ty1) ,pointer :: p_n
allocate(p_n)
p_n%name='xyz0'
allocate(p_n%next)
p_n%next%name='xyz1'
nullify(p_n%back_next)
allocate(p_n%next%next)
p_n%next%next%name='xyz2'
p_n%next%back_next => p_n
allocate(p_n%next%next%next)
p_n%next%next%next%name='xyz3'
p_n%next%next%back_next => p_n%next
call sub(p_n%next)
if (p_n%name.ne.'xyz0') write(6,*) "NG"
if (p_n%next%name.ne.'xyz2') write(6,*) "NG"
if (p_n%next%next%name.ne.'xyz3') write(6,*) "NG"
if (p_n%next%back_next%name.ne.'xyz1') write(6,*) "NG"
contains
subroutine sub(pp)
type (ty1) ,pointer :: pp
pp%back_next%next=> pp%next
end subroutine
end
subroutine sub02()
interface 
subroutine sub(pp)
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
type (ty1) ,pointer :: pp
end subroutine
end interface
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
type (ty1) ,pointer :: p_n
allocate(p_n)
p_n%name='xyz0'
allocate(p_n%next)
p_n%next%name='xyz1'
nullify(p_n%back_next)
allocate(p_n%next%next)
p_n%next%next%name='xyz2'
p_n%next%back_next => p_n
allocate(p_n%next%next%next)
p_n%next%next%next%name='xyz3'
p_n%next%next%back_next => p_n%next
call sub(p_n%next)
if (p_n%name.ne.'xyz0') write(6,*) "NG"
if (p_n%next%name.ne.'xyz2') write(6,*) "NG"
if (p_n%next%next%name.ne.'xyz3') write(6,*) "NG"
if (p_n%next%back_next%name.ne.'xyz1') write(6,*) "NG"
end
subroutine sub(pp)
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
type (ty1) ,pointer :: pp
pp%back_next%next=> pp%next
end subroutine

module mod03
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
contains
subroutine sub(pp)
type (ty1) ,pointer :: pp
pp%back_next%next=> pp%next
end subroutine
end
subroutine sub03()
use mod03
type (ty1) ,pointer :: p_n
allocate(p_n)
p_n%name='xyz0'
allocate(p_n%next)
p_n%next%name='xyz1'
nullify(p_n%back_next)
allocate(p_n%next%next)
p_n%next%next%name='xyz2'
p_n%next%back_next => p_n
allocate(p_n%next%next%next)
p_n%next%next%next%name='xyz3'
p_n%next%next%back_next => p_n%next
call sub(p_n%next)
if (p_n%name.ne.'xyz0') write(6,*) "NG"
if (p_n%next%name.ne.'xyz2') write(6,*) "NG"
if (p_n%next%next%name.ne.'xyz3') write(6,*) "NG"
if (p_n%next%back_next%name.ne.'xyz1') write(6,*) "NG"
end

module mod04
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
contains
subroutine subb(pp)
type (ty1) ,pointer :: pp
entry sub(pp)
pp%back_next%next=> pp%next
end subroutine
end
subroutine sub04()
use mod04
type (ty1) ,pointer :: p_n
allocate(p_n)
p_n%name='xyz0'
allocate(p_n%next)
p_n%next%name='xyz1'
nullify(p_n%back_next)
allocate(p_n%next%next)
p_n%next%next%name='xyz2'
p_n%next%back_next => p_n
allocate(p_n%next%next%next)
p_n%next%next%next%name='xyz3'
p_n%next%next%back_next => p_n%next
call sub(p_n%next)
if (p_n%name.ne.'xyz0') write(6,*) "NG"
if (p_n%next%name.ne.'xyz2') write(6,*) "NG"
if (p_n%next%next%name.ne.'xyz3') write(6,*) "NG"
if (p_n%next%back_next%name.ne.'xyz1') write(6,*) "NG"
end

module mod05
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
contains
subroutine sub(pp)
type (ty1) ,pointer :: pp
pp%back_next%next=> pp%next
end subroutine
subroutine sss05()
type (ty1) ,pointer :: p_n
allocate(p_n)
p_n%name='xyz0'
allocate(p_n%next)
p_n%next%name='xyz1'
nullify(p_n%back_next)
allocate(p_n%next%next)
p_n%next%next%name='xyz2'
p_n%next%back_next => p_n
allocate(p_n%next%next%next)
p_n%next%next%next%name='xyz3'
p_n%next%next%back_next => p_n%next
call sub(p_n%next)
if (p_n%name.ne.'xyz0') write(6,*) "NG"
if (p_n%next%name.ne.'xyz2') write(6,*) "NG"
if (p_n%next%next%name.ne.'xyz3') write(6,*) "NG"
if (p_n%next%back_next%name.ne.'xyz1') write(6,*) "NG"
end subroutine
end
subroutine sub05()
use mod05
call sss05()
end

module mod06
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
contains
subroutine sss06()
type (ty1) ,pointer :: p_n
allocate(p_n)
p_n%name='xyz0'
allocate(p_n%next)
p_n%next%name='xyz1'
nullify(p_n%back_next)
allocate(p_n%next%next)
p_n%next%next%name='xyz2'
p_n%next%back_next => p_n
allocate(p_n%next%next%next)
p_n%next%next%next%name='xyz3'
p_n%next%next%back_next => p_n%next
call sub(p_n%next)
if (p_n%name.ne.'xyz0') write(6,*) "NG"
if (p_n%next%name.ne.'xyz2') write(6,*) "NG"
if (p_n%next%next%name.ne.'xyz3') write(6,*) "NG"
if (p_n%next%back_next%name.ne.'xyz1') write(6,*) "NG"
contains
subroutine sub(pp)
type (ty1) ,pointer :: pp
pp%back_next%next=> pp%next
end subroutine
end subroutine
end
subroutine sub06()
use mod06
call sss06()
end

module mod07
type ty1
 sequence
 character*(10) :: name
 type (ty1),pointer :: next
 type (ty1),pointer :: back_next
end type
contains
subroutine subb(pp)
type (ty1) ,pointer :: pp
entry sub(pp)
pp%back_next%next=> pp%next
end subroutine
subroutine sss07()
type (ty1) ,pointer :: p_n
allocate(p_n)
p_n%name='xyz0'
allocate(p_n%next)
p_n%next%name='xyz1'
nullify(p_n%back_next)
allocate(p_n%next%next)
p_n%next%next%name='xyz2'
p_n%next%back_next => p_n
allocate(p_n%next%next%next)
p_n%next%next%next%name='xyz3'
p_n%next%next%back_next => p_n%next
call sub(p_n%next)
if (p_n%name.ne.'xyz0') write(6,*) "NG"
if (p_n%next%name.ne.'xyz2') write(6,*) "NG"
if (p_n%next%next%name.ne.'xyz3') write(6,*) "NG"
if (p_n%next%back_next%name.ne.'xyz1') write(6,*) "NG"
end subroutine
end
subroutine sub07()
use mod07
call sss07()
end
