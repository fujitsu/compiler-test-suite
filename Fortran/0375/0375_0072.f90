type parent
  integer :: i
end type

type,extends(parent) :: child
end type
print *,'pass'

end
