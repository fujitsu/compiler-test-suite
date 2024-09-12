
module data
  type str_data
     real(kind=8) b(77)
     real(kind=8) x(77)
     real(kind=8) y(77)
  end type str_data
end module data

subroutine sub01(data_a,a,mask)
  use data
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  type(str_data) data_a

  z = 1
  n = mask(77)
  do i=1,n
     
     if (data_a%x(i) .gt. data_a%b(i)) then
        data_a%x(i) = data_a%b(i)
     end if
     
     a(i) = a(i) + z
  end do
end subroutine sub01

subroutine sub02(data_a,a,mask)
  use data
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  type(str_data) data_a

  z = 1
  n = mask(77)
  do i=1,n
     
     if (data_a%y(i) .gt. data_a%b(i)) then
        data_a%y(i) = data_a%b(i)
     end if
     
     a(i) = a(i) + z
  end do
end subroutine sub02

program main
  use data
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  integer(kind=8) i,mask(77)
  type(str_data) data_a

  data_a%x = 0
  data_a%y = 0
  
  do i=1,77
     mask(i) = i
     data_a%b(i) = i/2
  end do
  call sub01(data_a,a,mask)
  call sub02(data_a,c,mask)
  do i=1,77
     if (data_a%x(i) .ne. data_a%y(i)) then
        write(6,*) data_a%x(i)
        write(6,*) data_a%y(i)
     endif
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
