module stream_module
  interface operator(.out.)
     module procedure stream_int_out
  end interface
contains
  function stream_int_out(a,b)
    integer,intent(in) :: a,b
    integer :: stream_int_out
    stream_int_out=a+b
  end function stream_int_out
end module stream_module

module zone_module
  interface operator(.out.)
     module procedure stream_zone_out
  end interface
  type cell_avg
     real :: rho
  end type cell_avg
  type(cell_avg) :: zone
contains
  function stream_zone_out (stream, zone)
    use stream_module, only: operator(.out.)
    type(cell_avg),  intent(in) :: stream, zone
    type(cell_avg) :: stream_zone_out
    stream_zone_out%rho=0.0
  end function stream_zone_out
end module zone_module
use stream_module
use zone_module
print *,'pass'
end
