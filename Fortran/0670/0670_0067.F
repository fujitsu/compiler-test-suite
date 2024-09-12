#define a(i) b(2,i)
      dimension b(2,3)
      character*5 z
      a(3)=105
      z='12345'
      if (abs(b(2,3)-105)>0.0001)print *,'e'
      z='a()'
      if(z/='a()')print *,'e'
      z="a()"
      if(z/='a()')print *,'e'
      print *,'pass'
      end

