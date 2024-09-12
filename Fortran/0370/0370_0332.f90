
  complex(kind=4),target :: t1
  complex(kind=8),target :: t2
  complex(kind=16),target :: t3
  complex(kind=4),pointer :: p1
  complex(kind=8),pointer :: p2
  complex(kind=16),pointer :: p3
  complex(kind=4),target :: n1
  complex(kind=8),target :: n2
  complex(kind=16),target :: n3

  data t1,t2,t3 /(1.0,10.0),(2.0,20.0),(3.0,30.0)/
  data p1,p2,n1,p3,n2,n3 /t1,t2,(20.0,21.0),t3,(22.0,23.0),(24.0,25.0)/
  
  print *,p1,p2,p3
  print *,n1,n2,n3
end program
