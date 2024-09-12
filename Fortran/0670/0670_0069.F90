#define a(i) b(2,i)
      dimension b(2,3)
      a(3)=105
      if(abs(b(2,3)-105)>0.001)print *,'er'
      print *,'pass'
      end

