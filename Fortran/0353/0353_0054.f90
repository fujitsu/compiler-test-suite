program main
  type ty1
     complex(kind=4) :: aa
     complex(kind=4),dimension(5) :: bb,cc,dd
  end type ty1

  type(ty1)::tt

  data tt%dd(2:4)%im /4.0,5.0,6.0/
  data tt%cc(3)%im   /3.0/
  data tt%bb%im      /5*2.0/
  data tt%aa%im      /1.0/

  print *, tt%aa
  print *, tt%bb
  print *, tt%cc
  print *, tt%dd
end
