
module mod
  integer(kind=8),target :: t1 = 5
  type ty
     integer(kind=8),pointer :: p1 => t1
  end type ty
  type(ty) tt
contains
  integer function func()
    integer(kind=8),target :: m1 = 10
    real(kind=8),target,dimension(3),save :: m2
    type mty
       integer(kind=8),pointer :: pa => t1
       integer(kind=8),pointer :: pb => m1
       real(kind=8),pointer :: pc => m2(2)
    end type mty
    type(mty) mtt

    m2 = (/1.0,2.0,3.0/)
    
    print *, mtt%pa
    print *, mtt%pb
    print *, mtt%pc
    func = mtt%pa + mtt%pb
  end function func
  
end module mod

program main
  use mod
  integer ret
  print *, tt%p1
  ret = func()
  print *, ret

end program