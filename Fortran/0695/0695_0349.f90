
module mod_data
  real(kind=8) v, w
end module mod_data

subroutine sub01(x,a,b,s,mask)
  use mod_data
  integer(kind=4) i,mask(77),ida
  real(kind=4) z, idx, a(77), b(77)
  real(kind=8) x
  logical(kind=4) s(77),u
  logical(kind=8) r(77)/77*.true./

  z = 1
  u = .true.
  idx = 1
  ida = 1
  n = mask(77)
  do i=1,n
     
     x = x + 1
     v = v + 1
     
     a(i) = a(i) + z
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = a(i) + x
     else
        b(i) = b(i) + x
     end if
     
     x = max(a(i), b(i))
     z = min(a(i), b(i))
     
     if (z .lt. x) then
        z = a(i)
     endif
     if (x .gt. z) then
        x = b(i)
     endif
     
     if (x .lt. z) then
        x = a(i)
        idx = i
     endif
     x = x + idx
     if (z .gt. x) then
        z = b(i)
        idx = i
     endif
     z = z + idx
     
     if (mod(mask(i),3) .eq. 0) then
        a(ida) = i
        ida = ida + 1
     endif
     
     s(i) = s(i) .and. u
     s(i) = s(i) .or. r(i)
  end do
end subroutine sub01

subroutine sub02(x,a,b,s,mask)
  use mod_data
  integer(kind=4) i,mask(77),ida
  real(kind=4) z, idx, a(77), b(77)
  real(kind=8) x
  logical(kind=4) s(77),u
  logical(kind=8) r(77)/77*.true./

  z = 1
  u = .true.
  idx = 1
  ida = 1
  n = mask(77)
  do i=1, n
     
     x = x + 1
     w = w + 1
     
     a(i) = a(i) + z
     
     if(mod(mask(i),3) .eq. 0) then
        a(i) = a(i) + x
     else
        b(i) = b(i) + x
     end if
     
     x = max(a(i), b(i))
     z = min(a(i), b(i))
     
     if (z .lt. x) then
        z = a(i)
     endif
     if (x .gt. z) then
        x = b(i)
     endif
     
     if (x .lt. z) then
        x = a(i)
        idx = i
     endif
     x = x + idx
     if (z .gt. x) then
        z = b(i)
        idx = i
     endif
     z = z + idx
     
     if (mod(mask(i),3) .eq. 0) then
        a(ida) = i
        ida = ida + 1
     endif
     
     s(i) = s(i) .and. u
     s(i) = s(i) .or. r(i)
  end do
end subroutine sub02

program main
  use mod_data
  real(kind=4) a(77)/77*0/, c(77)/77*0/
  logical(kind=4) s(77)/77*.false./, t(77)/77*.false./
  real(kind=4) b(77)/77*0/, d(77)/77*0/
  real(kind=8) x/0/,y/0/
  integer(kind=4) i,mask(77)
  do i=1,77
     mask(i) = i
     a(i) = i/2
     c(i) = i/2
     b(i) = i/3*(-1)
     d(i) = i/3*(-1)
  end do
  v = 0
  w = 0
  call sub01(x,a,b,s,mask)
  call sub02(y,c,d,t,mask)
  if (x .ne. y) then
     write(6,*) x
     write(6,*) y
  endif
  if (v .ne. w) then
     write(6,*) v
     write(6,*) w
  endif
  do i=1,77
     if (a(i) .ne. c(i)) then
        write(6,*) a(i)
        write(6,*) c(i)
        stop
     endif
     if (b(i) .ne. d(i)) then
        write(6,*) b(i)
        write(6,*) d(i)
        stop
     endif
     if (s(i) .neqv. t(i)) then
        write(6,*) s(i)
        write(6,*) c(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
