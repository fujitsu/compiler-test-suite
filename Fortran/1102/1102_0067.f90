module m3
  type :: ty_1
    integer::y=2
    contains
      procedure :: prc
  end type
  contains
    subroutine prc(this)
      class(ty_1) :: this
      if (this%y/=2) print *,1002
    end subroutine prc
end module m3

print *,'sngg236o : pass'
end
