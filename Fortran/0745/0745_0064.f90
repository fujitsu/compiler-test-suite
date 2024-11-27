      function cm(i1)
      character*1 cm
      write(cm(1:1),'(i1)') i1
      end
      subroutine chk_cmp(c)
      character*(1) c(3,3),cm
            if (cm(0)/='0')write(6,*) "NG"
      end
      character*1 a2(3,3)
       call chk_cmp(a2)
      print *,'pass'
      end
