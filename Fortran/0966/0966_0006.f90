save
  type ty1
    integer ::i=1
  end type
  type (ty1) :: str
  type (ty1),pointer :: st
  type (ty1),allocatable,dimension(:) :: s
  end

