      program  main
      integer*4     ans(50),a(10,10),cnst(50)
      data       ans/50*0/,cnst/9,42,66,108,141,165,63,69,72,78,81,75,
     *                         93,99,102,108,105,153,159,162,168,171,
     *                        165,183,189,192,198,201,195,123,129,132,
     *                        138,141,135,66,33,39,42,48,51,45,96,156,
     *                        186,126,111,0,0,0/
      call     sub05 (ans,a,cnst)
      stop
      end
      subroutine    sub05 (ans,a,cnst)
      integer*4  ans(50),a(10,10),cnst(50)
      k        =    1
      do  1  i =    1,10
      do  1  j =    1,10
      a(i,j)   =    k
   1  k        =    k+1
      i2 = 2
      i4 = 4
      i1 = 1
      do  2  i =    i2,i4,i1
      ans(1)   =    ans(1)+a(1,i)
      ans(2)   =    ans(2)+a(2,i+1)
      ans(3)   =    ans(3)+a(3,i-1)
      ans(4)   =    ans(4)+a(4,2*i)
      ans(5)   =    ans(5)+a(5,2*i+1)
      ans(6)   =    ans(6)+a(6,2*i-1)
      ans(7)   =    ans(7)+a(i,1)
      ans(8)   =    ans(8)+a(i,i)
      ans(9)   =    ans(9)+a(i,i+1)
      ans(10)  =    ans(10)+a(i,2*i)
      ans(11)  =    ans(11)+a(i,2*i+1)
      ans(12)  =    ans(12)+a(i,2*i-1)
      ans(13)  =    ans(13)+a(i+1,1)
      ans(14)  =    ans(14)+a(i+1,i)
      ans(15)  =    ans(15)+a(i+1,i+1)
      ans(16)  =    ans(16)+a(i+1,2*i)
      ans(17)  =    ans(17)+a(i+1,2*i-1)
      ans(18)  =    ans(18)+a(2*i,1)
      ans(19)  =    ans(19)+a(2*i,i)
      ans(20)  =    ans(20)+a(2*i,i+1)
      ans(21)  =    ans(21)+a(2*i,2*i)
      ans(22)  =    ans(22)+a(2*i,2*i+1)
      ans(23)  =    ans(23)+a(2*i,2*i-1)
      ans(24)  =    ans(24)+a(2*i+1,1)
      ans(25)  =    ans(25)+a(2*i+1,i)
      ans(26)  =    ans(26)+a(2*i+1,i+1)
      ans(27)  =    ans(27)+a(2*i+1,2*i)
      ans(28)  =    ans(28)+a(2*i+1,2*i+1)
      ans(29)  =    ans(29)+a(2*i+1,2*i-1)
      ans(30)  =    ans(30)+a(2*i-1,1)
      ans(31)  =    ans(31)+a(2*i-1,i)
      ans(32)  =    ans(32)+a(2*i-1,i+1)
      ans(33)  =    ans(33)+a(2*i-1,2*i)
      ans(34)  =    ans(34)+a(2*i-1,2*i+1)
      ans(35)  =    ans(35)+a(2*i-1,2*i-1)
      ans(36)  =    ans(36)+a(i,i-1)
      ans(37)  =    ans(37)+a(i-1,1)
      ans(38)  =    ans(38)+a(i-1,i)
      ans(39)  =    ans(39)+a(i-1,i+1)
      ans(40)  =    ans(40)+a(i-1,2*i)
      ans(41)  =    ans(41)+a(i-1,2*i+1)
      ans(42)  =    ans(42)+a(i-1,2*i-1)
      ans(43)  =    ans(43)+a(i+1,i-1)
      ans(44)  =    ans(44)+a(2*i,i-1)
      ans(45)  =    ans(45)+a(2*i+1,i-1)
      ans(46)  =    ans(46)+a(2*i-1,i-1)
    2 ans(47)  =    ans(47)+a(i+1,2*i+1)
      ipsw     =    0
      do  4  i =    1,47
      if (ans(i).eq.cnst(i))  go to   4
      if (ipsw.ne.0)          go to   3
      write(6,100)
      ipsw     =    1
    3 write(6,101)  i,cnst(i),ans(i)
    4 continue
      if (ipsw.ne.0)          go to   5
      write(6,102)
      return
    5 write(6,103)
      stop
  100 format(1h1/1h0,5x,35h* test of optimization error list *//1h0,
     *              21x,15hconstant value.,12x,13hresult value.      )
  101 format(1h0,5x,5hans(,i3,5h ) = ,6x,i12,13x,i12)
  102 format(1h1/1h0/,5x,'error is not detected' )
  103 format(1h0,5x,'*** error is detected ***' )
      end
