program test
  type tf
     integer::x=1
  end type tf
  type te
     type(tf)::f01
     type(tf),pointer::f02
  end type te
  type td
     type(te)::e01
     type(te),pointer::e02
     type(te),pointer::e03
     type(te),pointer::e04
     type(te),pointer::e05
     type(te),pointer::e06
     type(te),pointer::e07
     type(te),pointer::e08
     type(te),pointer::e09
     type(te),pointer::e10
  end type td
  type tc
     type(td)::d01
     type(td),pointer::d02
     type(td),pointer::d03
     type(td),pointer::d04
     type(td),pointer::d05
     type(td),pointer::d06
     type(td),pointer::d07
     type(td),pointer::d08
     type(td),pointer::d09
     type(td),pointer::d10
  end type tc
  type tb
     type(tc)::c01
     type(tc),pointer::c02
     type(tc),pointer::c03
     type(tc),pointer::c04
     type(tc),pointer::c05
     type(tc),pointer::c06
     type(tc),pointer::c07
     type(tc),pointer::c08
     type(tc),pointer::c09
     type(tc),pointer::c10
  end type tb
  type ta
     type(tb)::b01
     type(tb),pointer::b02
     type(tb),pointer::b03
     type(tb),pointer::b04
     type(tb),pointer::b05
     type(tb),pointer::b06
     type(tb),pointer::b07
     type(tb),pointer::b08
     type(tb),pointer::b09
     type(tb),pointer::b10
  end type ta

  type(ta),pointer::pa
  allocate(pa)
  if (pa%b01%c01%d01%e01%f01%x /= 1) print *, '101'
  print *,'pass'
end program test
