      program  main
      integer*4     ans(50),cnst(50),a(10,10),b(10,10),c(10,10)
      data          ans/50*0/,cnst/52,118,144,204,3,26,32,86,92,26,32,
     *    86,92,26,32,86,92,26,32,86,92,6,12,28,88,6,3,23*0/
      call sub43 (ans,cnst,a,b,c)
      stop
      end
      subroutine sub43 (ans,cnst,a,b,c)
      integer*4     ans(50),cnst(50),a(10,10),b(10,10),c(10,10)
      n        =    1
      do  1  i =    1,10
      do  1  j =    1,10
      a(i,j)   =    n
    1 n        =    n+1
      do  2  i =    1,10
      do  2  j =    1,10
      b(i,j)   =    a(i,j)
    2 c(i,j)   =    a(j,i)
      i1  = 1
      i2  = 2
      do  4  i =    i1,i2,i1
      do  3  j =    i1,i2,i1
      ans(1)   =    ans(1)+a(i,j)+b(i,j)
      ans(2)   =    ans(2)+a(i,2*j)+b(2*i,j)
      ans(3)   =    ans(3)+a(2*i,j)+b(i,2*j)+c(i,j)
    3 ans(4)   =    ans(4)+a(2*i,j)+b(j,i)+c(2*j,2*i)
      ans(5)   =    ans(5)+i
    4 continue
      n1       =    1
      do  7  i =    i1,i2,i1
      n2       =    1
      do  5  j =    i1,i2,i1
      ans(6)   =    ans(6)+a(n1,n2)
      ans(7)   =    ans(7)+a(n1,2*n2)
      ans(8)   =    ans(8)+a(2*n1,n2)
      ans(9)   =    ans(9)+a(2*n1,2*n2)
      ans(10)  =    ans(10)+a(n2,n1)
      ans(11)  =    ans(11)+a(n2,2*n1)
      ans(12)  =    ans(12)+a(2*n2,n1)
      ans(13)  =    ans(13)+a(2*n2,2*n1)
    5 n2       =    n2+1
      n2       =    1
    6 ans(14)  =    ans(14)+a(n1,n2)
      ans(15)  =    ans(15)+a(n1,2*n2)
      ans(16)  =    ans(16)+a(2*n1,n2)
      ans(17)  =    ans(17)+a(2*n1,2*n2)
      ans(18)  =    ans(18)+a(n2,n1)
      ans(19)  =    ans(19)+a(n2,2*n1)
      ans(20)  =    ans(20)+a(2*n2,n1)
      ans(21)  =    ans(21)+a(2*n2,2*n1)
      n2       =    n2+1
      if (n2.le.2)  go to     6
      n1       =    n1+1
    7 continue
      do  9  i =    i1,i2,i1
      n        =    1
      do  8  j =    i1,i2,i1
      ans(22)  =    ans(22)+a(1,n)
      ans(23)  =    ans(23)+a(1,2*n)
      ans(24)  =    ans(24)+a(n,2)
      ans(25)  =    ans(25)+a(2*n,2)
      ans(26)  =    ans(26)+2*i-j
    8 n        =    n+1
    9 ans(27)  =    ans(27)+i
      ipsw     =    0
      do  1000 i =  1,50
      if (ans(i).eq.cnst(i))  go to 1000
      if (ipsw.ne.0)          go to  999
      write(6,100)
      ipsw     =    1
  999 write(6,101)  i,cnst(i),ans(i)
 1000 continue
      if (ipsw.ne.0)     go to     1001
      write(6,102)
      return
 1001 write(6,103)
      return
  100 format(1h1/1h0,5x,43h* test of optimization ( no-43)  error list,
     *    2h *//1h0,15x,6x,15hconstant value.,12x,13hresult value.)
  101 format(1h0,5x,5hans (,i3,5h ) = ,8x,i10,15x,i10)
  102 format(1h1/1h0/,5x,'error is not detected' )
  103 format(1h0,5x,'*** error is detected ***' )
      end
