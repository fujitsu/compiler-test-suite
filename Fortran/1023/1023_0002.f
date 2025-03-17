      character*20 name
      name="abcdefg"
      call sub(name,7)
      end
      subroutine sub(name,len)
      character*(len) name
      print *,name
      end
