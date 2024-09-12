      integer  a(10)/10*1/,b(10)/10*-1/

      do 20 i=1,10
         call sub2(b(i))
 20   continue
      write(6,*) a
      write(6,*) b
      end

      subroutine sub2(jj)
      do  i=1,10
         call sub4(jj)
      enddo
      return
      end

      subroutine sub4(kkkk)
      kkkk = kkkk + 1
      return
      end
