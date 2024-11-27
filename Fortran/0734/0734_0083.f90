module mm
  integer, parameter:: K = 100
  integer, parameter:: int32 = selected_int_kind (9)
  type, public :: tao_random_raw_state
     integer(kind=int32), dimension(K) :: x
  end type tao_random_raw_state

  type, public :: tao_random_state
     type(tao_random_raw_state) :: state
     integer(kind=int32), dimension(:), pointer :: buffer       =>null()
     integer :: buffer_end, last
  end type tao_random_state
    integer, private, parameter :: NAME_LENGTH = 64
    integer, public, parameter :: EXC_NONE = 0

  type, public :: exception
     integer :: level                                          =EXC_NONE
     character(len=NAME_LENGTH) :: message                     =""
     character(len=NAME_LENGTH) :: origin                      =""
  end type exception
end module
module mmm
use mm
contains
  subroutine vamp_sample_grid_parallel (rng)
    type(tao_random_state), dimension(:), intent(inout) :: rng
    type(exception), dimension(size(rng)) :: excs
    if (size(rng)/=5)write(6,*) "NG"
    if (size(excs)/=5)write(6,*) "NG"
    if (associated(rng(1)%buffer))write(6,*) "NG"
    if (associated(rng(2)%buffer))write(6,*) "NG"
    if (associated(rng(3)%buffer))write(6,*) "NG"
    if (associated(rng(4)%buffer))write(6,*) "NG"
    if (associated(rng(5)%buffer))write(6,*) "NG"
    rng(5)%last=5
    do kk=1,5
    if (excs(kk)%level/=0)write(6,*) "NG"
    if (excs(kk)%message/='')write(6,*) "NG"
    if (excs(kk)%origin/='')write(6,*) "NG"
    end do
  end subroutine vamp_sample_grid_parallel
end
use mmm
  type(tao_random_state), dimension(5):: rng
call vamp_sample_grid_parallel(rng)
    if (size(rng)/=5)write(6,*) "NG"
    if (associated(rng(1)%buffer))write(6,*) "NG"
    if (associated(rng(2)%buffer))write(6,*) "NG"
    if (associated(rng(3)%buffer))write(6,*) "NG"
    if (associated(rng(4)%buffer))write(6,*) "NG"
    if (associated(rng(5)%buffer))write(6,*) "NG"
    if(rng(5)%last/=5)write(6,*) "NG"
print *,'pass'
end
