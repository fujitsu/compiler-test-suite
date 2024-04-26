program main
  type ty1
     complex(kind=16),dimension(5) :: bb,cc,dd
     complex(kind=16) :: aa
  end type ty1

  type(ty1)::tt

  data tt%aa%im      /1.0/
  data tt%cc(1)%im   /3.0/
  data tt%dd(1:2)%im /4.0,5.0/
  data tt%bb%im      /5*6.0/

  print *, tt%aa
  print *, tt%bb
  print *, tt%cc
  print *, tt%dd
end
