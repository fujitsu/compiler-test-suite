
module mod_data
  type str_data
     real(kind=8) b(77)
     real(kind=8) x(77)
  end type str_data
  type (str_data) data_a
  type (str_data) data_b
end module mod_data

subroutine sub01(a,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)

  z = 0
  n = mask(77)
  do i=1,n
     
     if (data_a%x(i) .gt. data_a%b(i)) then
        data_a%x(i) = data_a%b(i)
     end if
     
     a(i) = a(i) + z
  end do
end subroutine sub01

subroutine sub02(a,mask)
  use mod_data 
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)

  z = 0
  n = mask(77)
  do i=1,n
     
     if (data_b%x(i) .gt. data_b%b(i)) then
        data_b%x(i) = data_b%b(i)
     end if
     
     a(i) = a(i) + z
  end do
end subroutine sub02

program main
  use mod_data
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  integer(kind=8) i,mask(77)

  data_a%x = 0
  data_b%x = 0
  
  do i=1,77
     mask(i) = i
     data_a%b(i) = i/2
     data_b%b(i) = i/2
  end do
  call sub01(a,mask)
  call sub02(c,mask)
  do i=1,77
     if (data_a%x(i) .ne. data_b%x(i)) then
        write(6,*) data_a%x(i)
        write(6,*) data_b%x(i)
     endif
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
