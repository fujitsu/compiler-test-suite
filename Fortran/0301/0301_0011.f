      PROGRAM MAIN
      REAL*4 a(10,10)/100*1./
      REAL*4 b(10,10)/100*2./
      REAL*4 res1(5,5)/25*0/
      REAL*4 res2(5,5)/25*0/
      REAL*4 res(5,5)/1,11,21,31,41,3,13,23,33,43,5,15,25,35,45,
     *                7,17,27,37,47,9,19,29,39,49/
      do i=1,10
         do j=1,10
            a(i,j) = (i-1)*10+j
            b(i,j) = (i-1)*10+j
         enddo
      enddo
C
      JSP=2
      do I=1,5
      do J=1,10,2
         WRITE(10,'(E12.4)') a(I,J)
      ENDDO
      ENDDO
C

      do I=1,5
      do J=1,10,JSP
         WRITE(11,'(E12.4)') b(I,J)
      ENDDO
      ENDDO
      rewind(10)
      rewind(11)
      do I=1,5
      do J=1,5
         read(10,'(E12.4)') res1(i,j)
         read(11,'(E12.4)') res2(i,j)
         if (res1(i,j).ne.res(i,j) .or.res2(i,j).ne.res(i,j)) then
            goto 99
         endif
      ENDDO
      ENDDO

      write(6,*) ' ## OK ## '
      goto 98
 99   write(6,*) ' ## NG ## ',i,j
      write(6,*) res1
      write(6,*) res2
      write(6,*) res
 98   continue
      STOP
      END

