
module mod_data
  type str_data
     real(kind=8) x(77)
  end type str_data
  type (str_data) data_a
  type (str_data) data_b
end module mod_data

subroutine sub01(a,b,d,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  real(kind=8) b(77), d(77)

  n = mask(77)
  do i=1,n
     
     if (data_a%x(i) .gt. b(i)) then
        data_a%x(i) = b(i)
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = data_a%x(i) + a(i)
     else
        d(i) = data_a%x(i) + d(i)
     end if
  end do

end subroutine sub01

subroutine sub02(a,b,d,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  real(kind=8) b(77), d(77)

  n = mask(77)
  do i=1,n
     
     if (data_b%x(i) .gt. b(i)) then
        data_b%x(i) = b(i)
     end if
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = data_b%x(i) + a(i)
     else
        d(i) = data_b%x(i) + d(i)
     end if
  end do

end subroutine sub02

program main
  use mod_data
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  real(kind=8) b(77)/77*1/,d(77)/77*2/,e(77)/77*2/
  integer(kind=8) i,mask(77)
  data_a%x = 0
  data_b%x = 0
  do i=1,77
     mask(i) = i
     a(i) = i
     c(i) = i
     b(i) = i/2
     d(i) = i*2
     e(i) = i*2
  end do
  call sub01(a,b,d,mask)
  call sub02(c,b,e,mask)
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
     if (d(i) .ne. e(i)) then
        write(6,*) d(i)
        write(6,*) e(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
