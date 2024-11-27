integer, pointer     :: iipp_01(:)
integer, allocatable :: iial_01(:)
 call csub01(null(       ))
 call csub01(null(iipp_01))
 call csub01(null(iial_01))
 contains
  subroutine csub01(cs01_arg01)
   integer, pointer     :: cs01_arg01(:)
  end subroutine
end
