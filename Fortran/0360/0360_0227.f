      real*4 r4a(10)/10*2/,r4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      real*4 r4c(10)/10*1/
      real*4 resa(10),resc(10)
      data resa/5.38516474,-13,30,-13,29,29,2,2,2,2/
      data resc/10*4/

      do i=1,10
         r4a(1) = max(r4a(1),sqrt(abs(r4b(i))),r4c(i))
         r4a(2) = min(r4a(2),r4b(i),sqrt(r4c(i)))
      enddo
      write(1,*)

      do i=1,10
         r4a(3) = max(r4a(3),abs(r4b(i)+r4c(i)))
         r4a(4) = min(r4a(4),r4b(i),abs(r4c(i)),2)
      enddo
      write(1,*)

      do i=1,10
         r4a(5) = max(r4a(5),r4a(1),r4b(i))
      enddo
      write(1,*)

      do i=1,10
         r4a(6) = max(r4a(6),r4a(1),r4b(i)) 
         r4c(i) = r4c(i) + 3
      enddo

      do i=1,10
         if (abs(r4a(i)-resa(i))>0.00005 .or. r4c(i).ne.4)goto 30
      enddo

      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',r4a
      write(6,*) ' calc ',r4c
 40   continue

      end
