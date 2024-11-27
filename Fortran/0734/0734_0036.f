      structure /aaa/
         integer x1
         integer x2
      end structure
      record /aaa/ x
      x.x1=100
      x.x2=200
      if (x.x1.ne.100)print *,'error-1'
      if (x.x2.ne.200)print *,'error-2'
      print *,'pass'
      end
