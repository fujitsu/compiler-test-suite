
module data
  type str_data
     real(kind=8) z(77)
     integer(kind=8) idx(77)
  end type str_data
end module data

subroutine sub01(data_a,mask)
  use data
  integer(kind=8) i,mask(77)
  type(str_data) data_a

  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        data_a%z(i) = i
        data_a%idx(i) = data_a%idx(i) + 1
     endif
     
     if(mod(mask(i),4) .eq. 0) then
        data_a%z(i) = i * 2
        data_a%idx(i) = data_a%idx(i) + 2
     endif
  end do
end subroutine sub01

subroutine sub02(data_a,mask)
  use data
  integer(kind=8) i,mask(77)
  type(str_data) data_a

  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        data_a%z(i) = i
        data_a%idx(i) = data_a%idx(i) + 1
     endif
     if(mod(mask(i),4) .eq. 0) then
        data_a%z(i) = i * 2
        data_a%idx(i) = data_a%idx(i) * 2
     endif
  end do
end subroutine sub02

program main
  use data
  integer(kind=8) i,mask(77)
  type(str_data) data_a
  type(str_data) data_c

  data_a%z   = 0
  data_a%idx = 1
  data_c%z   = 0
  data_c%idx = 1

  do i=1,77
     mask(i) = i
  end do
  call sub01(data_a,mask)
  call sub02(data_c,mask)
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
