implicit none
integer,pointer :: ver1,ver2,ver3
allocate(ver1,ver2,ver3)
ver1 = 1
ver2 = 2
ver3 = 3
call test01(ver1,ver2,ver3)
if(ver2.ne.3)print *,'err'
print *,"pass"
contains

subroutine test01(a,b,c)
implicit none
integer,pointer,intent(in) :: a
integer,pointer,intent(out) :: b
integer,pointer,intent(inout) :: c
b=>a
b=>c
end subroutine test01
end
