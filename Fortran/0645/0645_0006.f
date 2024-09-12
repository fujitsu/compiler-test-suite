      character*10 a(10),b(10,10)
      data (a(1)(i:i),i=1,10) /10*'a'/    
      data (b(2,2)(i:i),i=1,10) /10*'b'/


      type aaa
        character*10 a(10),b(10,10)
      endtype aaa
      type (aaa) ab1(3)
      data (ab1(1)%a(3)(i:i),i=1,10) /10*'c'/  
      data (ab1(1)%b(4,4)(i:i),i=1,10) /10*'d'/   

      print *,a(1),b(2,2),ab1(1)%a(3),ab1(1)%b(4,4)
      end
