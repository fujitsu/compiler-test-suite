      character*(*) a
      parameter(a='12!45\0\0')
      if (len(a)/=9)print *,'e'
      if (len("1!\'")/=4)print *,'e'
      if (len('1!\"')/=4)print *,'e'
      print *,'pass'
      end

