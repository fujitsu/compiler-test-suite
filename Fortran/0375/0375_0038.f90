  subroutine set
  use,intrinsic::iso_c_binding
  bind(c,name='AbC')::/a4/
  common /a4/ a
  type(c_ptr)::a
  integer,target:: i
  common /a5/ i
  a=c_loc(i)
  end
call set
  print *,'pass'
  end
