program main
interface
integer function fun()
end function
end interface

integer::ii
ii=fun()
if(ii==20)print*,"Pass"
end
integer function fun()
type ty1
real::r1
end type
type,extends(ty1)::ty2
real::c1
end type

type(ty2),target::tar1
type(ty1),pointer::tar2
type(ty2),allocatable,target::tar3
tar2=>NULL()
allocate(tar3)
fun = kk(tar1,tar2,tar3)
fun = pp(tar1,tar3)
call sub(tar1,tar3)        
contains
integer function kk(dmy1,dmy2,dmy3)
type (ty2),pointer,intent(in)::dmy1
type (ty1),pointer::dmy2
type (ty2),pointer,intent(in)::dmy3
if (.NOT.associated(dmy1))print*,"error",101
if (.not.associated(dmy3))print*,"error",102
if(associated(dmy2))print*,"error",107
dmy1%c1=6.50 
kk=10
end function
integer function pp(bbm1,bbm2)
type (ty2),pointer,intent(in)::bbm1
type (ty2),pointer,intent(in)::bbm2
if (.NOT.associated(bbm1))print*,"error",103
if (.NOT.associated(bbm2))print*,"error",104
bbm2%r1= 2.50
pp=20
end function
subroutine sub(d1,d2)
type (ty2),pointer,intent(in)::d1
type (ty2),pointer,intent(in)::d2
if (d1%c1 /= 6.50)print*,105
if (d2%r1 /= 2.50)print*,106
end subroutine
end function

