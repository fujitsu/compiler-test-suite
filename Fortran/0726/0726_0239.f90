      implicit none

      integer :: n, i, j
      integer start_ticks, end_ticks, ticks_per_second
      real :: time

      type test
        double precision, pointer :: list(:)
      end type test

      type(test) :: rows
      allocatable :: rows(:)

      n = 2000
      write(1,*)'n = ',n

      allocate(rows(n))

      do i = 1,  n
         allocate(rows(i)%list(n))
         do j = 1, n
            rows(i)%list(j) = 123.0
         end do
      end do

      call system_clock(count=start_ticks)
      do i = 1,  n
         do j = 1, n
            rows(i)%list(j) = rows(i)%list(j)**3 + 10.0*rows(i)%list(j)
         end do
      end do
      call system_clock(count=end_ticks,count_rate=ticks_per_second)
      write(1,*)"rows(n)%list(n)=",rows(n)%list(n)
      time = real(end_ticks - start_ticks) / real(ticks_per_second)
      write(1,*)'total time: ', time, ' (sec)'
      print *,'pass'

      end
