module m1
  integer,parameter :: I4P=4

  type, abstract, public :: object
     character(len=:), allocatable :: progname           ! 2-1-1
     character(len=:), allocatable :: version            ! 2-1-2
     character(len=:), allocatable :: help               ! 2-1-3
     character(len=:), allocatable :: help_color         ! 2-1-4
     character(len=:), allocatable :: help_style         ! 2-1-5
     character(len=:), allocatable :: help_markdown      ! 2-1-6
     character(len=:), allocatable :: description        ! 2-1-7
     character(len=:), allocatable :: license            ! 2-1-8
     character(len=:), allocatable :: authors            ! 2-1-9
     character(len=:), allocatable :: epilog             ! 2-1-10
     character(len=:), allocatable :: m_exclude          ! 2-1-11
     character(len=:), allocatable :: error_message      ! 2-1-12
     character(len=:), allocatable :: error_color        ! 2-1-13
     character(len=:), allocatable :: error_style        ! 2-1-14
     integer(I4P)                  :: error=0_I4P        !
     integer(I4P)                  :: usage_lun=0        !
     integer(I4P)                  :: version_lun=6      !
     integer(I4P)                  :: error_lun=0        !
  endtype object

  type, extends(object) :: command_line_argument
     ! base: object                                                 ! 2-2-3-1
     character(len=:), allocatable, public :: switch                ! 2-2-3-2
     character(len=:), allocatable, public :: switch_ab             ! 2-2-3-3
     logical,                       public :: is_required=.false.   !
     logical,                       public :: is_positional=.false. !
     integer(I4P),                  public :: position= 0_I4P       !
     logical,                       public :: is_passed=.false.     !
     logical,                       public :: is_hidden=.false.     !
     character(len=:), allocatable, public :: act                   ! 2-2-3-4
     character(len=:), allocatable, public :: def                   ! 2-2-3-5
     character(len=:), allocatable, public :: nargs                 ! 2-2-3-6
     character(len=:), allocatable, public :: choices               ! 2-2-3-7
     character(len=:), allocatable, public :: val                   ! 2-2-3-8
     character(len=:), allocatable, public :: envvar                ! 2-2-3-9
  end type command_line_argument

  type, extends(object) :: command_line_arguments_group
     ! base: object                                                        ! 2-2-1
     character(len=:), allocatable,            public :: group             ! 2-2-2
     integer(I4P),                             public :: Na=0_I4P          !
     integer(I4P)                                     :: Na_required=0_I4P !
     integer(I4P)                                     :: Na_optional=0_I4P !
     type(command_line_argument), allocatable, public :: cla(:)            ! 2-2-3
     logical,                                  public :: is_called=.false. !
  end type command_line_arguments_group

  type, extends(object), public :: command_line_interface
     ! base: object                                                        ! 2-1
     type(command_line_arguments_group), allocatable :: clasg(:)           ! 2-2
     character(len=:), allocatable                   :: args(:)            ! 2-3
     character(len=:), allocatable                   :: examples(:)        ! 2-4
     logical                                         :: disable_hv=.true. !
     logical                                         :: is_parsed_=.true. !
  end type command_line_interface

  type :: MAPL_CapOptions
     integer :: comm
     logical :: use_comm_world = .true.
     character(:), allocatable :: egress_file
     character(:), allocatable :: cap_rc_file
     !     type (ESMF_LogKind_Flag) :: esmf_logging_mode = ESMF_LOGKIND_NONE
     integer :: npes_model = -1
     integer, allocatable :: npes_input_server(:)
     integer, allocatable :: nodes_input_server(:)
     integer, allocatable :: npes_output_server(:)
     integer, allocatable :: nodes_output_server(:)
     integer :: n_iserver_group = 1
     integer :: n_oserver_group = 1
     integer :: n_members = 1
     character(:), allocatable :: ensemble_subdir_prefix
     character(:), allocatable :: logging_config
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
    do n2=1,size(value%cli_options%clasg(n1)%cla)
  allocate(value%cli_options%clasg(n1)%cla(n2)%switch,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%switch_ab,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%act      ,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%def      ,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%nargs    ,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%choices  ,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%val      ,source="ab")
  allocate(value%cli_options%clasg(n1)%cla(n2)%envvar   ,source="ab")
  end do
  end do
  allocate(value%cli_options%args(2),source="ab")
  allocate(value%cli_options%examples(2),source="ab")
   
  call s1(var, value)
  write(1, '("value adddres:",z16.16)')loc(value%cli_options%clasg(1)%cla(1)%switch_ab)
 select type (var)
    type is(MAPL_FlapCapOptions)
  write(1, '("var   adddres:",z16.16)')loc(var  %cli_options%clasg(1)%cla(1 )%switch_ab)
  end select
  k=0
 select type (p=>var)
    type is(MAPL_FlapCapOptions)
    k=1
    do n1=1,size(p%cli_options%clasg)
    do n2=1,size(p%cli_options%clasg(n1)%cla)
      p%cli_options%clasg(n1)%cla(n2)%switch     ='12'
      p%cli_options%clasg(n1)%cla(n2)%switch_ab  ='12'
      p%cli_options%clasg(n1)%cla(n2)%act        ='12'
      p%cli_options%clasg(n1)%cla(n2)%def        ='12'
      p%cli_options%clasg(n1)%cla(n2)%nargs      ='12'
      p%cli_options%clasg(n1)%cla(n2)%choices    ='12'
      p%cli_options%clasg(n1)%cla(n2)%val        ='12'
      p%cli_options%clasg(n1)%cla(n2)%envvar     ='12'
    end do
    end do
    do n1=1,size(p%cli_options%args )
      p%cli_options%args(n1)=     '12' 
    end do
    do n1=1,size(p%cli_options%examples )
      p%cli_options%examples(n1)=     '12' 
    end do
      
 end select
 if (k/=1) print *,3241
    do n1=1,size(value%cli_options%clasg)
    do n2=1,size(value%cli_options%clasg(n1)%cla)
     if(value%cli_options%clasg(n1)%cla(n2)%switch     /='ab') print *,1001
     if(value%cli_options%clasg(n1)%cla(n2)%switch_ab  /='ab') print *,1002
     if(value%cli_options%clasg(n1)%cla(n2)%act        /='ab') print *,1003
     if(value%cli_options%clasg(n1)%cla(n2)%def        /='ab') print *,1004
     if(value%cli_options%clasg(n1)%cla(n2)%nargs      /='ab') print *,1005
     if(value%cli_options%clasg(n1)%cla(n2)%choices    /='ab') print *,1006
     if(value%cli_options%clasg(n1)%cla(n2)%val        /='ab') print *,1007
     if(value%cli_options%clasg(n1)%cla(n2)%envvar     /='ab') print *,1008
    end do
    end do
    do n1=1,size(value%cli_options%args )
    if (value%cli_options%args(n1)/=     'ab')  print *,2001
    end do
    do n1=1,size(value%cli_options%examples )
    if (value%cli_options%examples(n1)/=     'ab' ) print *,2002
    end do


print *,'sngg637t : pass'
end program main
