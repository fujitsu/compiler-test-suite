subroutine c8_to_c16(a,b)
  implicit none
  integer,parameter::xp = 4 
  integer,parameter::xp2 = 8 
  complex(xp) a
  complex(xp2) b
  a = b
end subroutine c8_to_c16

subroutine c16_to_c8(a,b)
  implicit none
  integer,parameter::xp = 4 
  integer,parameter::xp2 = 8 
  complex(xp2) a
  complex(xp) b
  b = a
end subroutine c16_to_c8

program main
  implicit none
  integer,parameter::xp = 4 
  integer,parameter::xp2 = 8 
  complex(xp)::a
  complex(xp2)::b
  b=(1.0,2.0)
  call c8_to_c16(a,b)
  if(a==(1.0,2.0))then
     print *,'c8_to_c16 : OK'
  else
     print *,'c8_to_c16 : NG a=',a
  endif
  call c16_to_c8(b,a)
  if(b==(1.0,2.0))then
     print *,'c16_to_c8 : OK'
  else
     print *,'c16_to_c8 : NG b=',b
  endif
end program main
