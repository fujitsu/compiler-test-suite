#define a(i) b(2,i)
      dimension b(2,3)
      character*5 z
      a(3)=105
      z='12345'
      if (abs(b(2,3)-105)>0.001)print *,'e'
      if (z/='12345')print *,'e'
      print *,'pass'
      end

