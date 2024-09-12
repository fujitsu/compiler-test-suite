
module mod_data
  type str_data
     real(kind=8) z(77)
     integer(kind=8) idx(77)
  end type str_data
  type (str_data) data_a
  type (str_data) data_c
end module mod_data

subroutine sub01(x,b,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  logical(kind=8) x, b(77)

  data_a%z = 0
  data_a%idx = 1
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        data_a%z(i) = i
        data_a%idx(i) = data_a%idx(i) + 1
     endif
     
     x = x .neqv. b(i)
  end do
end subroutine sub01

subroutine sub02(x,b,mask)
  use mod_data
  integer(kind=8) i,mask(77)
  logical(kind=8) x, b(77)

  data_c%z = 0
  data_c%idx = 1
  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        data_c%z(i) = i
        data_c%idx(i) = data_c%idx(i) + 1
     endif
     
     x = x .neqv. b(i)
  end do
end subroutine sub02

program main
  use mod_data
  logical(kind=8) x/.false./,y/.false./,b(77)/77*.true./
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     if (mod(i,2) .eq. 0) then
        b(i) = .true.
     end if
  end do
  call sub01(x,b,mask)
  call sub02(y,b,mask)
  if (x .neqv. y) then
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
