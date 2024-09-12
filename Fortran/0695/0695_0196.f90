
module mod_data
  type str_data
     real(kind=8) z(77)
     integer(kind=8) idx(77)
  end type str_data
  type (str_data) data_a
  type (str_data) data_c
end module mod_data

subroutine sub01(mask)
  use mod_data
  integer(kind=8) i,mask(77)

  data_a%z = 0
  data_a%idx = 1
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        data_a%z(i) = i
        data_a%idx(i) = data_a%idx(i) + 1
     endif
     
     if(mod(mask(i),5) .eq. 0) then
        data_a%z(i) = i + 2
        data_a%idx(i) = data_a%idx(i) + 2
     endif
  end do
end subroutine sub01

subroutine sub02(mask)
  use mod_data
  integer(kind=8) i,mask(77)

  data_c%z = 0
  data_c%idx = 1
  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        data_c%z(i) = i
        data_c%idx(i) = data_c%idx(i) + 1
     endif
     if(mod(mask(i),5) .eq. 0) then
        data_c%z(i) = i + 2
        data_c%idx(i) = data_c%idx(i) + 2
     endif
  end do
end subroutine sub02

program main
  use mod_data
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
  end do
  call sub01(mask)
  call sub02(mask)
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
