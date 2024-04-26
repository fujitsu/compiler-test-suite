program main
  type ty1
     complex(kind=8),dimension(5) :: bb,cc,dd
     complex(kind=8) :: aa
  end type ty1

  type(ty1)::tt

  data tt%aa%re      /1.0/
  data tt%bb%re      /2.0,12.0,22.0,32.0,42.0/
  data tt%cc(5)%re   /3.0/
  data tt%dd(2:5)%re /4.0,5.0,6.0,7.0/

  print *, tt%aa
  print *, tt%bb
  print *, tt%cc
  print *, tt%dd
end
