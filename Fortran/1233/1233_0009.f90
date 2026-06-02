module m1
  integer,parameter :: I4P=4

  type, abstract, public :: object
     character(len=:), allocatable :: progname
     integer(I4P)                  :: error_lun=0
  endtype object

  type, extends(object) :: command_line_argument
     ! base: object
     character(len=:), allocatable, public :: switch
     character(len=:), allocatable, public :: switch_ab
  end type command_line_argument

  type, extends(object) :: command_line_arguments_group
     ! base: object
     type(command_line_argument), allocatable, public :: cla(:)
  end type command_line_arguments_group

  type, extends(object), public :: command_line_interface
     ! base: object
     type(command_line_arguments_group), allocatable :: clasg(:)
  end type command_line_interface

  type :: MAPL_CapOptions
     integer :: comm
     logical :: use_comm_world = .true.
     character(:), allocatable :: egress_file
     integer :: npes_model = -1
  end type MAPL_CapOptions

  type, extends(MAPL_CapOptions) :: MAPL_FlapCapOptions
     ! base: MAPL_CapOptions
     type(command_line_interface) :: cli_options
  end type MAPL_FlapCapOptions

contains

  subroutine s1(var, value)
    class(MAPL_CapOptions), allocatable, intent(inout) :: var
    class(MAPL_CapOptions), intent(in) :: value
    allocate(var, source=value)
  end subroutine s1
end module m1

program main
  use m1
  class(MAPL_CapOptions), allocatable :: var
  type(MAPL_FlapCapOptions), allocatable :: value
  allocate(value)
  allocate(value%cli_options%clasg(2))
    do n1=1,size(value%cli_options%clasg)
  allocate(value%cli_options%clasg(n1)%cla(2))
  allocate(value%cli_options%clasg(n1)%progname,source='ab')
    do n2=1,size(value%cli_options%clasg(n1)%cla)
  allocate(value%cli_options%clasg(n1)%cla(n2)%switch,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%switch_ab,source="ab")
  end do
  end do
  allocate(value%cli_options%progname,source='ab')

  call s1(var, value)
  k=0
 select type (p=>var)
    type is(MAPL_FlapCapOptions)
    k=1
    do n1=1,size(p%cli_options%clasg)
      p%cli_options%clasg(n1)%progname='12'
    do n2=1,size(p%cli_options%clasg(n1)%cla)
      p%cli_options%clasg(n1)%cla(n2)%switch     ='12'
      p%cli_options%clasg(n1)%cla(n2)%switch_ab  ='12'
    end do
    end do
    p    %cli_options%progname='12'
 end select
 if (k/=1) print *,3241
    do n1=1,size(value%cli_options%clasg)
    if (value%cli_options%clasg(n1)%progname/='ab') print *,1000
    do n2=1,size(value%cli_options%clasg(n1)%cla)
     if(value%cli_options%clasg(n1)%cla(n2)%switch     /='ab') print *,1001
     if(value%cli_options%clasg(n1)%cla(n2)%switch_ab  /='ab') print *,1002
    end do
    end do
    if (value %cli_options%progname/='ab') print *,1003

print *,'sngg641t : pass'
end program main
