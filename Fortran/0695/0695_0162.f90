
subroutine sub01(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  logical(kind=8) x, b(77)
  type str_data
     real(kind=8) z
     integer(kind=8) idx
  end type str_data
  type(str_data) data

  data%idx = 1
  data%z = 0
  n = mask(77)
  do i=1,n
     
     if(mod(mask(i),2) .eq. 0) then
        data%z = i
        data%idx = data%idx + 1
     endif
     
     x = x .eqv. b(i)
  end do
  a = data%z + data%idx
end subroutine sub01

subroutine sub02(x,a,b,mask)
  integer(kind=8) i,mask(77)
  real(kind=8) a(77)
  logical(kind=8) x, b(77)
  type str_data
     real(kind=8) z
     integer(kind=8) idx
  end type str_data
  type(str_data) data

  data%idx = 1
  data%z = 0
  n = mask(77)
  do i=1, n
     
     if(mod(mask(i),2) .eq. 0) then
        data%z = i
        data%idx = data%idx + 1
     endif
     
     x = x .eqv. b(i)
  end do
  a = data%z + data%idx
end subroutine sub02

program main
  real(kind=8) a(77)/77*0/, c(77)/77*0/
  logical(kind=8) x/.true./,y/.true./,b(77)/77*.false./
  integer(kind=8) i,mask(77)
  do i=1,77
     mask(i) = i
     if (mod(i,3) .ne. 0) then
        b(i) = .true.
     end if
  end do
  call sub01(x,a,b,mask)
  call sub02(y,c,b,mask)
  if (x .neqv. y) then
     write(6,*) x
     write(6,*) y
  endif
  do i=1,77
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main