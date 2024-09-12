  type tp1
     character(len=5) :: ca = 'abcde'
     character(len=5) :: cb(3)
     character(len=5) :: cc(3) = 'fghij'
  end type tp1

  type(tp1) aa

  print *, aa%ca
  print *, aa%cc
end
