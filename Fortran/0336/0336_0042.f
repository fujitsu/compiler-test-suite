      parameter (n=10)
      implicit integer*8 (a-h)
      dimension a(n,n),b(n,n),c(n,n)
      print*,' *** integer*8 test **'
      do j=1,n
         do i=1,n
            a(i,j) = 0
            b(i,j) = i**2 
            c(i,j) = -i 
         enddo
      enddo
      print*,a(n,n),b(n,n),c(n,n)
      do j=2,n
         do i=j,n
            if(i.ge.2) then
               a(i,j) = (a(i-1,j) * b(i,j) / c(i-1,j))* afunc(i)
            else
               a(i,j) = (a(i-1,j) * b(i,j) / c(i-1,j))* afunc(i)
            endif
         enddo
      enddo
      print*,' ** a ** '
      print*,a
      print*,' ** b ** '
      print*,b
      print*,' ** c ** '
      print*,c
      end
      integer*8 function afunc(i)
      integer*4 i
      i = i / 2 + 1
      afunc = i
      return
      end
