program main
 complex( 4)::c04(1),ff04
 complex( 8)::c08(1),ff08
 complex(16)::c16(1),ff16
 logical( 2)::l02(1),gg02
 logical( 4)::l04(1),gg04
 logical( 8)::l08(1),gg08

  c04=ff04()
  c08=ff08()
  c16=ff16()
  l02=gg02(c04)
  l04=gg04(c08)
  l08=gg08(c16)
  if (l02(1).or.l04(1).or.l08(1)) then
    print *,'errror'
    print *,l02,c04
    print *,l04,c08
    print *,l08,c16
  else
    print *,'pass'
  endif
end program main

function ff04() result(dd)
 complex( 4)::dd
  dd=( 4.0e0, -4.0e0)
end function ff04

function ff08() result(dd)
 complex( 8)::dd
  dd=( 8.0d0, -8.0d0)
end function ff08

function ff16() result(dd)
 complex(16)::dd
  dd=(16.0q0,-16.0d0)
end function ff16

function gg02(cc) result(ee)
 complex(4),intent(in)::cc
 logical(2),ee
  ee = cc /= ( 4.0e0, -4.0e0)
end function gg02

function gg04(cc) result(ee)
 complex(8),intent(in)::cc
 logical(4),ee
  ee = cc /= ( 8.0d0, -8.0d0)
end function gg04

function gg08(cc) result(ee)
 complex(16),intent(in)::cc
 logical( 8),ee
  ee = cc /= (16.0q0,-16.0q0)
end function gg08
