      integer i4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer i4c(10)/10*9/
      integer i4r(10)/29,-13,29,-13,29,-13,29,-13,29,-13/
      real *4 r4a(10)/10*0/
      real *4 r4a1,r4a2,r4a3,r4a4,r4a5,r4a6,r4a7,r4a8,r4a9,r4a10
      data r4a1,r4a2,r4a3,r4a4,r4a5,r4a6,r4a7,r4a8,r4a9,r4a10/10*0/

      do i=1,10
         r4a(1) = max(r4a(1),(i4b(i)),i4c(i))
         r4a(2) = min(r4a(2),i4b(i),(i4c(i)))
      enddo
      write(1,*)

      do i=1,10
         r4a(3) = max(r4a(3),(i4b(i)),i4c(i))
         r4a(4) = min(r4a(4),i4b(i),(i4c(i)))
      enddo
      write(1,*)

      do i=1,10
         r4a(5) = max(r4a(5),(i4b(i)),i4c(i))
         r4a(6) = min(r4a(6),i4b(i),(i4c(i)))
      enddo
      write(1,*)


      do i=1,10
         r4a(7) = max(r4a(7),(i4b(i)),i4c(i))
         r4a(8) = min(r4a(8),i4b(i),(i4c(i)))
      enddo
      write(1,*)

      do i=1,10
         r4a(9) = max(r4a(9),(i4b(i)),i4c(i))
         r4a(10) = min(r4a(10),i4b(i),(i4c(i)))
      enddo

      do i=1,10
         if (r4a(i).ne.i4r(i)) goto 10
      enddo

      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',r4a
      write(6,*) ' res  ',i4r
 20   continue

      do i=1,10
         r4a1 = max(r4a1,(i4b(i)),i4c(i))
         r4a2 = min(r4a2,i4b(i),(i4c(i)))
      enddo
      r4a(1) = r4a1
      r4a(2) = r4a2

      do i=1,10
         r4a3 = max(r4a3,(i4b(i)),i4c(i))
         r4a4 = min(r4a4,i4b(i),(i4c(i)))
      enddo
      r4a(3) = r4a3
      r4a(4) = r4a4

      do i=1,10
         r4a5 = max(r4a5,(i4b(i)),i4c(i))
         r4a6 = min(r4a6,i4b(i),(i4c(i)))
      enddo
      r4a(5) = r4a5
      r4a(6) = r4a6

      do i=1,10
         r4a7 = max(r4a7,(i4b(i)),i4c(i))
         r4a8 = min(r4a8,i4b(i),(i4c(i)))
      enddo
      r4a(7) = r4a7
      r4a(8) = r4a8

      do i=1,10
         r4a9 = max(r4a9,(i4b(i)),i4c(i))
         r4a10 = min(r4a10,i4b(i),(i4c(i)))
      enddo
      r4a(9) = r4a9
      r4a(10) = r4a10

      do i=1,10
         if (r4a(i).ne.i4r(i)) goto 30
      enddo

      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',r4a
      write(6,*) ' res  ',i4r
 40   continue
      end
