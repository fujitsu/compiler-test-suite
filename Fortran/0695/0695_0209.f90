
module data
  type str_data
     real(kind=8) z(77)
     integer(kind=8) idx(77)
  end type str_data
end module data

subroutine sub01(x,data_a,b,mask)
  use data
  integer(kind=8) i,mask(77)
  real(kind=8) x, b(77)
  type(str_data) data_a

  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        data_a%z(i) = i
        data_a%idx(i) = data_a%idx(i) + 1
     endif
      
     if (x .lt. b(i)) then
        x = b(i)
        data_a%idx(i) = i
     end if
  end do
end subroutine sub01

subroutine sub02(x,data_a,b,mask)
  use data
  integer(kind=8) i,mask(77)
  real(kind=8) x, b(77)
  type(str_data) data_a

  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        data_a%z(i) = i
        data_a%idx(i) = data_a%idx(i) + 1
     endif
      
     if (x .lt. b(i)) then
        x = max(x,b(i))
        data_a%idx(i) = i
     end if
  end do
end subroutine sub02

program main
  use data
  real(kind=8) x/0/,y/0/,b(77)
  integer(kind=8) i,mask(77)
  type(str_data) data_a
  type(str_data) data_c
  data_a%z   = 0
  data_a%idx = 1
  data_c%z   = 0
  data_c%idx = 1

  do i=1,77
     mask(i) = i
     b(i) = i/2
  end do
  call sub01(x,data_a,b,mask)
  call sub02(y,data_c,b,mask)
  if (x .ne. y) then
     write(6,*) x
     write(6,*) y
  endif
  do i=1,77
     if (data_a%z(i) .ne. data_c%z(i)) then
        write(6,*) data_a%z(i)
        write(6,*) data_c%z(i)
        stop
     endif
     if (data_a%idx(i) .ne. data_c%idx(i)) then
        write(6,*) data_a%idx(i)
        write(6,*) data_c%idx(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
