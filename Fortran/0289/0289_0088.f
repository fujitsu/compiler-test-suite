      program  main
      integer*4     a(10,10)
      i1  = 1
      i10 = 10
      do  1  i =    i1,i10,i1
      do  1  j =    i1,i10,i1
    1 a(i,j)   =    j
      ipsw     =    0
      do  4  i =    1,10
      n        =    1
    2 if (a(i,n).eq.n)   go to    4
      if (ipsw.ne.0)     go to    3
      write(6,100)
      ipsw     =    1
    3 write(6,101)  i,n,n,a(i,n)
      n        =    n+1
      if (n.le.10)       go  to   2
    4 continue
      if (ipsw.ne.0)     go to    5
      write(6,102)
      stop
    5 write(6,103)
      stop
  100 format(1h1/1h0,5x,43h* test of optimization ( no-39 ) error list,
     *    2h *//1h0,21x,15hconstant value.,12x,13hresult value.)
  101 format(1h0,5x,5hans (,i3,1h,,i3,5h ) = ,4x,i10,15x,i10)
  102 format(1h1/1h0/,5x,'error is not detected' )
  103 format(1h0,5x,'*** error is detected' )
      end
