      call s1
      print *,'pass'
      end
      subroutine s1
      if (size((/(real(i),i=1,0)/))/=0)call errtra
      write(1,*)((/(real(i),i=1,0)/))
      end