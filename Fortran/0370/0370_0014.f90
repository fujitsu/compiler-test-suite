module mod
  type tp0
     integer,dimension(2) :: xx = 4
     integer              :: yy = 5
  end type tp0
  type tp1
     integer                                 :: ia = 1
     integer,public                          :: ib = 2
     integer,private                         :: ic = 3
     integer,pointer                         :: pa => NULL()
     integer,pointer,contiguous,dimension(:) :: pb => NULL()
     integer,allocatable                     :: aa
     integer,allocatable,dimension(:)        :: ab
     type(tp0)         :: ta
     type(tp0),public  :: tb
     type(tp0),private :: tc
     type(tp0),pointer :: tpa => NULL()
     type(tp0),pointer,contiguous,dimension(:) :: tpb => NULL()
     type(tp0),allocatable                   :: taa
     type(tp0),allocatable,dimension(:)      :: tab
     real,public :: ra = 5.0
  end type tp1
end module mod

program test
  use mod
  type(tp1) :: tt
  type(tp0),target :: x0 = tp0(10,20)

  allocate (tt%ab(3))
  tt%ab = 0
  tt%tpa=> x0

  print *, tt%ia
  print *, tt%ib

  print *, tt%ab
  print *, tt%ta
  print *, tt%tb
  print *, tt%tpa

  print *, tt%ra

end program test
