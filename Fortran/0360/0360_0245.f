      integer*4 i4a(10)/10*2/
      integer*4 i4b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*4 i4c(10)/10*9/
      integer*4 i4r(10)/29,-13,29,-13,29,-13,29,-13,29,-13/
      integer*4 i4a1,i4a2,i4a3,i4a4,i4a5,i4a6,i4a7,i4a8,i4a9,i4a10
      integer*8 i8a(10)/10*2/,i8b(10)/-3,4,29,1,-13,-10,7,-8,11,2/
      integer*8 i8c(10)/10*9/
      integer*8 i8r(10)/29,-13,29,-13,29,-13,29,-13,29,-13/
      integer*8 i8a1,i8a2,i8a3,i8a4,i8a5,i8a6,i8a7,i8a8,i8a9,i8a10
      data i4a1,i4a2,i4a3,i4a4,i4a5,i4a6,i4a7,i4a8,i4a9,i4a10/10*0/
      data i8a1,i8a2,i8a3,i8a4,i8a5,i8a6,i8a7,i8a8,i8a9,i8a10/10*0/

      n = ifunc(10)

      do i=1,n
         i4a1 = max(i4a1,(i4b(i)),i4c(i))
         i4a2 = min(i4a2,i4b(i),(i4c(i)))
      enddo
      i4a(1) = i4a1
      i4a(2) = i4a2

      do i=1,n
         i4a3 = max(i4a3,(i4b(i)),i4c(i))
         i4a4 = min(i4a4,i4b(i),(i4c(i)))
      enddo
      i4a(3) = i4a3
      i4a(4) = i4a4

      do i=1,n
         i4a5 = max(i4a5,(i4b(i)),i4c(i))
         i4a6 = min(i4a6,i4b(i),(i4c(i)))
      enddo

      i4a(5) = i4a5
      i4a(6) = i4a6

      do i=1,n
         i4a7 = max(i4a7,(i4b(i)),i4c(i))
         i4a8 = min(i4a8,i4b(i),(i4c(i)))
      enddo

      i4a(7) = i4a7
      i4a(8) = i4a8
      do i=1,n
         i4a9 = max(i4a9,(i4b(i)),i4c(i))
         i4a10 = min(i4a10,i4b(i),(i4c(i)))
      enddo
      i4a(9) = i4a9
      i4a(10) = i4a10

      do i=1,n
         if (i4a(i).ne.i4r(i)) goto 10
      enddo

      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',i4a
      write(6,*) ' res  ',i4r
 20   continue


      do i=1,n
         i8a1 = max(i8a1,(i8b(i)),i8c(i))
         i8a2 = min(i8a2,i8b(i),(i8c(i)))
      enddo

      i8a(1) = i8a1
      i8a(2) = i8a2

      do i=1,n
         i8a3 = max(i8a3,(i8b(i)),i8c(i))
         i8a4 = min(i8a4,i8b(i),(i8c(i)))
      enddo

      i8a(3) = i8a3
      i8a(4) = i8a4
      do i=1,n
         i8a5 = max(i8a5,(i8b(i)),i8c(i))
         i8a6 = min(i8a6,i8b(i),(i8c(i)))
      enddo

      i8a(5) = i8a5
      i8a(6) = i8a6
      do i=1,n
         i8a7 = max(i8a7,(i8b(i)),i8c(i))
         i8a8 = min(i8a8,i8b(i),(i8c(i)))
      enddo

      i8a(7) = i8a7
      i8a(8) = i8a8
      do i=1,n
         i8a9 = max(i8a9,(i8b(i)),i8c(i))
         i8a10 = min(i8a10,i8b(i),(i8c(i)))
      enddo
      i8a(9) = i8a9
      i8a(10) = i8a10

      do i=1,n
         if (i8a(i).ne.i8r(i)) goto 30
      enddo

      write(6,*) ' ## OK ## '
      goto 40
 30   write(6,*) ' ## NG ## '
      write(6,*) ' calc ',i8a
      write(6,*) ' res  ',i8r
 40   continue
      end

      integer function ifunc(nn)
      ifunc = nn
      return
      end
