module mod00
 type ty01
  integer :: ii
 end type
end module

module mod01
 interface
  subroutine isub01(di01)
   integer :: di01
  end subroutine
  subroutine isub02(dt01)
   use mod00
   type (ty01) :: dt01
  end subroutine
 end interface
 contains
  subroutine m1sub01()
   procedure(csub01), pointer :: pcsub01p
   procedure(csub02), pointer :: pcsub02p
   pcsub01p => isub01
   pcsub02p => isub02
   contains
    subroutine csub01(di01)
     integer :: di01
    end subroutine
    subroutine csub02(dt01)
     use mod00
     type (ty01) :: dt01
    end subroutine
  end subroutine
end module

print *,'pass'

end

subroutine isub01(di01)
 integer :: di01
end subroutine

subroutine isub02(dt01)
 use mod00
 type (ty01) :: dt01
end subroutine
