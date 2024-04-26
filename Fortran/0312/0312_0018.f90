subroutine test05()
type ty1
  integer  :: a02=2
  type (ty2),pointer :: ia
  integer  :: a03=3
end type
type ty2
 type (ty1)  :: s2
end type
type ty3
 type (ty2) ,pointer :: ip1
end type
type (ty3),allocatable :: str
allocate(str)
allocate(str%ip1)
allocate(str%ip1%s2%ia)
print *,str%ip1%s2%a02
print *,str%ip1%s2%a03
end subroutine

call test05
print *,'PASS'
end

