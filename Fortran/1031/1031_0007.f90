     program main
     integer, parameter :: imax=5E7
     integer :: istart(1:10) = 0
     integer :: i, k
     real(4) :: Z(4)
     character(48) :: row_1, row_i
     call random_seed(size=k)
     call random_seed(get=istart(1:k))
     call random_seed(put=istart(1:k))
     write(99,30) istart(1:k)
     write(7,30) istart(1:k)
     call random_number(Z)
     write(row_1,10) Z(1:4)
     write(99,20) 1, row_1
     write(7,20) 1, row_1
     call flush(1)
     do i=2, imax
        call random_number(Z)
        if (i==8388609 .or.  &
            i==16777217.or.  &
            i==25165825 .or. &
            i==33554433 ) then
        else
          cycle
        endif
        write(row_i,10) Z(1:4)
        if (row_i == row_1) then
           write(*,20) i, row_i
           write(7,20) i, row_i
           call flush(1)
        end if
     end do
  10 format (4es12.5)
  20 format (1x,'data in row#',i10,': ',a)
  30 format (1x,'RANDOM_NUMBER Periodicity-Test (Startvalue:',i10,')')
     print *,'pass'
     end program main
