type ty1
integer::arr(4)
end type
block
  type,extends(ty1)::ty2
  integer::aa(3)
  end type
  type(ty2)::obj
  associate(ptr1=>obj)
    open(FORM='UNFORMATTED',ACTION='WRITE',NEWUNIT=ptr1%arr(4),FILE='fort.21')
    write(ptr1%arr(4))2016
    close(ptr1%arr(4))
  end associate
  open(FORM='UNFORMATTED',ACTION='read',NEWUNIT=obj%aa(2),FILE='fort.21')
  read(obj%aa(2))obj%aa(1)
  close(obj%aa(2))
  if (obj%aa(1)/=2016)print*,"error:101"
end block
print*,"pass"
end
