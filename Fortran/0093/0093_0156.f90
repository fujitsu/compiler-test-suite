type ty
    complex :: cc
end type
type(ty),parameter :: obj = ty((3.56,8.77))
call sub(obj%cc%re)
contains
subroutine sub(dmy)
      real :: dmy
      if(dmy .ne. 3.56) print*,"101"
      print*,"pass"
end subroutine
end

