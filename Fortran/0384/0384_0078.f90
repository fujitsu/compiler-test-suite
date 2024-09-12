call test02()
print *,"pass"
end

subroutine test02()
type ty1
sequence
end type 

type(ty1) :: str ,str2
type ty2
 integer :: x =1
 type(ty1) :: str(10) = ty1()
 integer :: a =2
end type
type ty3
 integer :: x=1
 type(ty1) :: str(10) =ty1()
 integer :: a=2
end type
type (ty2),allocatable ::sss
type (ty2),allocatable ::sss2(:)
type (ty3),pointer ::sssa,sssa2(:)
type (ty2) ::isss
type (ty2) ::isss2(10)
type (ty3) ::isssa,isssa2(10)
allocate(sss,sss2(10))
allocate(sssa,sssa2(10))
deallocate(sss,sss2)
deallocate(sssa,sssa2)
allocate(sss,source=isss)
allocate(sss2(10),source=isss2)
allocate(sssa,source=isssa)
allocate(sssa2(10),source=isssa2)
End

