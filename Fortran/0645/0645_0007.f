      type aaa
        character a(1)
      endtype
      type (aaa) ta(2,2)
      data (ta(2,2)%a(1)(i:i),i=1,1)/'a'/
      print*,(ta(2,2)%a(1)(i:i),i=1,1)
      end
