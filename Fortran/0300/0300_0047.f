      COMPLEX*16 a(2,2)/4*(0.,0.)/,b(2,2),res(2,2)
      complex*16 c(2)/(1,3),(5,2)/
      data b/(10,20),(30,40),(50,60),(70,80)/
      data res/(11,23),(35,42),(51,63),(75,82)/
      do i=1,2
         do k=1,2
            a(i,k) = b(i,k) + c(i)
         enddo
      enddo

      do i=1,2
         do k=1,2
            if (a(i,k).ne.res(i,k)) goto 10
         enddo
      enddo
      write(6,*) "## ok ##"
      goto 20
 10   write(6,*) "## ng ##"
      write(6,*) a
      write(6,*) res
 20   continue
      END
