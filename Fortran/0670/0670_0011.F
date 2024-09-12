#define a a12345678
      a12345678=1
      a123=100
      b=a+a+a+a+a+a+a
      if (abs(b-7)>0.0001)print *,'error'
      b=a12345678+a12345678+a12345678+a12345678+a12345678+a12345678+a12345678
      if (abs(b-106)>0.0001)print *,'error'
      print *,'pass'
      end

