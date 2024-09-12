      character*(*) a
      parameter(a='12!45\0\0')
      if (len(a)/=7)print *,'e'
      if (len('1!\'')/=3)print *,'e'
      print *,'pass'
      end

