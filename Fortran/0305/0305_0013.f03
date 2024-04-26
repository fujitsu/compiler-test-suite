complex(kind=8) function dfoo(x) bind(c)
  complex(kind=8),value :: x
  dfoo = (1.0_8,2.0_8) + x
end function dfoo

complex(kind=4) function ffoo(x) bind(c)
  complex(kind=4),value :: x
  ffoo = (1.0_4,2.0_4) + x
end function ffoo

program main
  interface 
    function dfoo(x) bind(c)
      use iso_c_binding
      complex(c_double_complex),value :: x
      complex(c_double_complex) :: dfoo
    end function dfoo
    function ffoo(x) bind(c)
      use iso_c_binding
      complex(c_float_complex),value :: x
      complex(c_float_complex) :: ffoo
    end function ffoo
  end interface
  complex(kind=8) :: dret
  complex(kind=4) :: fret
  dret = dfoo(cmplx(1.0_8,2.0_8,kind=8))
  fret = ffoo(cmplx(1.0_8,2.0_8,kind=4))
  if ( dret .ne. cmplx(2.0_8, 4.0_8, kind=8) ) then
    print *, "NG"
  endif
  if ( fret .ne. cmplx(2.0_4, 4.0_4, kind=4) ) then
    print *, "NG"
  endif
  print *, "OK"
end program main