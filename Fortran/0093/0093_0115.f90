type ty
    complex :: cc(2,3) = (2,3)
end type
type(ty) :: obj
call sub(obj%cc%re)
contains
subroutine sub(dmy)
      real :: dmy(2,3)
      if(any(dmy .ne. 2)) print*,"101"
      print*,"pass"
end subroutine
end

