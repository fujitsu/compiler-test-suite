character(LEN=7)::ch
block
type ty
integer::ii(4)
end type
type(ty)::obj2
  block
  type ty
  integer::ii=30
  end type
  type(ty)::obj1
    block
    open(ACTION='write',FILe='fort.20',NEWUNIT=obj2%ii(3))
    write(obj2%ii(3),*)"fortran"
    close(obj2%ii(3))
    open(ACTION='read',FILe='fort.20',NEWUNIT=obj1%ii)
    read(obj1%ii,*)ch
    close(obj1%ii)
    end block
  end block
  if (ch/="fortran")print*,"error:101"
end block
print*,"pass"
end
