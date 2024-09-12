  type tp0
     integer(kind=8) :: tb = 5
  end type tp0

  type tp1
     integer,pointer :: ia;
     type(tp0),pointer :: basep;
     type(tp0),pointer,dimension(:,:) :: ppp
     integer,pointer :: ib => null()
     integer::ix = 7
  end type tp1

  type(tp1) t1a
  allocate (t1a%ib)
  t1a%ib = 3

  print *, t1a%ib
  print *, t1a%ix
end

