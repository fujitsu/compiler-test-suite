  use, intrinsic :: ieee_exceptions
  type(ieee_status_type ) sv
  call ieee_get_status(sv)
  call ieee_set_flag(ieee_all,.false.)
  call ieee_set_status(sv)
  print *,'pass'
end program
