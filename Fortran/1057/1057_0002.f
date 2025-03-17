      integer ia(1000,100),ib(1000,100),ic(1000)

      do i=1,1000
         ic(i) = i
!$omp do
         do j=1,100
            ia(i,j) = i
            ib(i,j) = j
         enddo
      enddo

!$omp master
      do i=1,1000
         n = ic(i)
         do j=1,100
            ia(i,j) = ia(i,j) + n
            ib(i,j) = ib(i,j) - 2
         enddo
      enddo
!$omp end master

      do i=1,1000
         do j=1,100
            if (ib(i,j).lt. 5) then
               ia(i,j) = ia(i,j) + j
            else
               ia(i,j) = ia(i,j) - j+2
            endif
         enddo
      enddo

      write(6,*) ia(1,1),ia(1000,100),ic(1),ic(100)
      end
