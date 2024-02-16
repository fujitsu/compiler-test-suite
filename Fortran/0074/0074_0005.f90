module mod_cnst
  implicit none
  private
  real(8), public, save :: CNST_LH0   = 2.5008D+6
  real(8), public, save :: CNST_LHS0  = 2.8342D+6
  real(8), public, save :: CNST_LHF0
  public ::  CNST_setup
contains
  subroutine CNST_setup
    implicit none
    CNST_LHF0  = CNST_LHS0 - CNST_LH0
    write(1,*) '90:CNST_LHF0=', CNST_LHF0,"/",loc(CNST_LHF0)
    write(1,2) '90:CNST_LHF0=', CNST_LHF0
    write(1,*) '90:CNST_LHS0=', CNST_LHS0,"/",loc(CNST_LHS0)
    write(1,*) '90:CNST_LH0=', CNST_LH0,"/",loc(CNST_LH0)
2   format(Z)
    return
  end subroutine CNST_setup
end module mod_cnst

module mod_runconf
  implicit none
  public :: runconf_setup
contains
  subroutine RUNCONF_setup
    use mod_cnst, only  :&
         CNST_LH0,       &
         CNST_LHS0,      &
         CNST_LHF0
    implicit none

    write(1,*) '91:CNST_LHF0=', CNST_LHF0,"/",loc(CNST_LHF0)
    write(1,2) '91:CNST_LHF0=', CNST_LHF0
    write(1,*) '91:CNST_LHS0=', CNST_LHS0,"/",loc(CNST_LHS0)
    write(1,*) '91:CNST_LH0=', CNST_LH0,"/",loc(CNST_LH0)
2   format(Z)
   if (abs(CNST_LHF0- 333400.)>10 ) print *,101,CNST_LHF0
       return
     end subroutine RUNCONF_setup
end module mod_runconf

module mod_mods
  use mod_runconf
  use mod_cnst
  implicit none 
contains
  subroutine mods_init
    implicit none 
    call CNST_setup
    write(1,*) '92:CNST_LHF0=', CNST_LHF0,"/",loc(CNST_LHF0)
    write(1,2) '92:CNST_LHF0=', CNST_LHF0
    write(1,*) '92:CNST_LHS0=', CNST_LHS0,"/",loc(CNST_LHS0)
    write(1,*) '92:CNST_LH0=', CNST_LH0,"/",loc(CNST_LH0)
2   format(Z)
    call RUNCONF_setup
  end subroutine mods_init
end module mod_mods
 
program MAIN
  use mod_mods, only:&
       & mods_init
  call mods_init
print *,'pass'
end
