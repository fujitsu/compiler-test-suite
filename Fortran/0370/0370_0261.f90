
module mod
  integer(kind=8),target :: t1 = 5
  type ty
     integer(kind=8),pointer :: p1 => t1
  end type ty
contains
  subroutine sub
    integer(kind=8),target :: m1 = 10
    integer ret
    type tys
       integer(kind=8),pointer :: pa => t1
       integer(kind=8),pointer :: pb => m1
    end type tys
    type(tys) :: ts1
    print *, ts1%pa
    print *, ts1%pb
    call subsub()
    ret = subfunc()
    print *, ret
  contains
    subroutine subsub
      integer(kind=8),target :: ms1 = 20
      type tyss
         integer(kind=8),pointer :: psa => t1
         integer(kind=8),pointer :: psb => m1
         integer(kind=8),pointer :: psc => ms1
      end type tyss
      type(tyss) :: tss1
      print *, "subsub"
      print *, tss1%psa
      print *, tss1%psb
      print *, tss1%psc
    end subroutine subsub
    integer function subfunc()
      integer(kind=8),target :: mf1 = 100
      type tysf
         integer(kind=8),pointer :: pfa => t1
         integer(kind=8),pointer :: pfb => m1
         integer(kind=8),pointer :: pfc => mf1
      end type tysf
      type(tysf) tsf1
      print *, "subfunc"
      print *, tsf1%pfa
      print *, tsf1%pfb
      print *, tsf1%pfc
      subfunc = tsf1%pfa+tsf1%pfb+tsf1%pfc
    end function subfunc
  end subroutine sub
end module mod

program xxx
  use mod
  type(ty) :: t2
  print *, t2%p1
  call sub
end program xxx
