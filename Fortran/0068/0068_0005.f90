!
subroutine conjg1(a)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a
  a = conjg(a)
end subroutine conjg1

subroutine conjg1_2(a)
  implicit none
  integer,parameter::xp2 = 8
  complex(xp2)::a
  a = conjg(a)
end subroutine conjg1_2

subroutine conjg2(a,b)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a,b
  a = conjg(a+b)
end subroutine conjg2

subroutine conjg2_2(a,b)
  implicit none
  integer,parameter::xp2 = 8
  complex(xp2)::a,b
  a = conjg(a+b)
end subroutine conjg2_2

subroutine conjg3(a,b)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a,b
  a = conjg(a*b)
end subroutine conjg3

subroutine conjg3_2(a,b)
  implicit none
  integer,parameter::xp1 = 8
  complex(xp1)::a,b
  a = conjg(a*b)
end subroutine conjg3_2

subroutine conjg4(a,b)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a,b
  a = conjg(a/b)
end subroutine conjg4

subroutine conjg4_2(a,b)
  implicit none
  integer,parameter::xp1 = 8
  complex(xp1)::a,b
  a = conjg(a/b)
end subroutine conjg4_2

subroutine conjg5(a,b,c)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a,b,c
  a = c+conjg(a+b)
end subroutine conjg5

subroutine conjg5_2(a,b,c)
  implicit none
  integer,parameter::xp1 = 8
  complex(xp1)::a,b,c
  a = c+conjg(a+b)
end subroutine conjg5_2

subroutine conjg6(a,b,c)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a,b,c
  a = c-conjg(a+b)
end subroutine conjg6

subroutine conjg6_2(a,b,c)
  implicit none
  integer,parameter::xp1 = 8
  complex(xp1)::a,b,c
  a = c+conjg(a+b)
end subroutine conjg6_2

subroutine conjg7(a,b,c)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a,b,c
  a = c*conjg(a+b)
end subroutine conjg7

subroutine conjg7_2(a,b,c)
  implicit none
  integer,parameter::xp1 = 8
  complex(xp1)::a,b,c
  a = c*conjg(a+b)
end subroutine conjg7_2

subroutine conjg8(a,b,c)
  implicit none
  integer,parameter::xp1 = 4 
  complex(xp1)::a,b,c
  a = c/conjg(a+b)
end subroutine conjg8

subroutine conjg8_2(a,b,c)
  implicit none
  integer,parameter::xp1 = 8
  complex(xp1)::a,b,c
  a = c/conjg(a+b)
end subroutine conjg8_2

program main
  implicit none
  integer,parameter::xp1 = 4
  integer,parameter::xp2 = 8
  complex(xp1)::a,b,c
  complex(xp2)::a2,b2,c2
  real(xp1)::dist
  a=(2.0, 3.0)
  a2=(0.0, -2.0)
  b=(1.0, 2.0)
  b2=(0.0, -4.0)
  c=(2.0, 1.0)
  c2=(-4.0,1.0)

  call conjg1(a)
  if (a==(2.0,-3.0))then
     print *, 'conjg1 : OK'
  else
     print *, 'conjg1 : NG a=', a
  end if

  call conjg1_2(a2)
  if (a2==(0.0,2.0))then
     print *, 'conjg1_2 : OK'
  else
     print *, 'conjg1_2 : NG a2=', a2
  end if

  call conjg2(a,b)
  if (a==(3.0,1.0))then
     print *, 'conjg2 : OK'
  else
     print *, 'conjg2 : NG a=', a
  end if

  call conjg2_2(a2,b2)
  if (a2==(0.0,2.0))then
     print *, 'conjg2_2 : OK'
  else
     print *, 'conjg2_2 : NG a2=', a2
  end if

  call conjg3(a,b)
  if (a==(1.0,-7.0))then
     print *, 'conjg3 : OK'
  else
     print *, 'conjg3 : NG a=', a
  end if

  call conjg3_2(a2,b2)
  if (a2==(8.0,0.0))then
     print *, 'conjg3_2 : OK'
  else
     print *, 'conjg3_2 : NG a2=', a2
  end if

  call conjg4(a,b)
  dist = abs(a-(-2.6,1.8))
  if(dist<0.01) then
     print *, 'conjg4 : OK'
  else
     print *, 'conjg4 : NG a=', a
  end if

  call conjg4_2(a2,b2)
  if (a2==(0.0,-2.0))then
     print *, 'conjg4_2 : OK'
  else
     print *, 'conjg4_2 : NG a2=', a2
  end if

  call conjg5(a,b,c)
  dist = abs(a-(0.4,-2.8))
  if(dist<0.01) then
     print *, 'conjg5 : OK'
  else
     print *, 'conjg5 : NG a=', a
  end if

  call conjg5_2(a2,b2,c2)
  if (a2==(-4.0,7.0))then
     print *, 'conjg5_2 : OK'
  else
     print *, 'conjg5_2 : NG a2=', a2
  end if

  call conjg6(a,b,c)
  dist = abs(a-(0.6,0.2))
  if(dist<0.01) then
     print *, 'conjg6 : OK'
  else
     print *, 'conjg6 : NG a=', a
  end if

  call conjg6_2(a2,b2,c2)
  if (a2==(-8.0,-2.0))then
     print *, 'conjg6_2 : OK'
  else
     print *, 'conjg6_2 : NG a2=', a2
  end if

  call conjg7(a,b,c)
  dist = abs(a-(5.4,-2.8))
  if(dist<0.01) then
     print *, 'conjg7 : OK'
  else
     print *, 'conjg7 : NG a=', a
  end if

  call conjg7_2(a2,b2,c2)
  if (a2==(26.0,-32.0))then
     print *, 'conjg7_2 : OK'
  else
     print *, 'conjg7_2 : NG a2=', a2
  end if

  call conjg8(a,b,c)
  dist = abs(a-(0.326,0.115))
  if(dist<0.01) then
     print *, 'conjg8 : OK'
  else
     print *, 'conjg8 : NG a=', a
  end if

  call conjg8_2(a2,b2,c2)
  dist = abs(a2-(-3.448E-02,8.62E-02))
  if(dist<0.01) then
     print *, 'conjg8_2 : OK'
  else
     print *, 'conjg8_2 : NG a2=', a2
  end if
end program main
