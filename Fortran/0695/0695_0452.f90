
subroutine sub01(x,a,b,c,z,m)
  integer(kind=8) i, idx
  real(kind=8) z, m, a(777), c(777)
  real(kind=8) x, b(777)

  idx = 1
  n = 777
  do i=1,n
     
     if(a(i) .le. z) then
        z = a(i)
     endif
     
     if(mod(b(i),2) .eq. 0) then
        x = i
        idx = idx + 1
     endif
     
     if(a(i) .ge. m) then
        m = a(i)
     endif
  end do
  c = z + m + idx
end subroutine sub01

subroutine sub02(x,a,b,c,z,m)
  integer(kind=8) i, idx
  real(kind=8) z, m, a(777), c(777)
  real(kind=8) x, b(777)

  idx = 1
  n = 777
  do i=1,n
     
     if(a(i) .le. z) then
        z = a(i)
     endif
     
     if(mod(b(i),2) .eq. 0) then
        x = i
        idx = idx + 1
     endif
     
     if(a(i) .ge. m) then
        m = a(i)
     endif
  end do
  c = z + m + idx
end subroutine sub02

program main
  real(kind=8) a(777)/777*0/, c(777)/777*0/, z/1/, m/1/, n/0/
  real(kind=8) res1(777)/777*0/, res2(777)/777*0/
  real(kind=8) x/0/,y/0/,b(777)/777*1/
  integer(kind=8) i
  do i=1,777
     a(i) = mod(i,3)
     c(i) = mod(i,3)
     b(i) = i
  end do
  call sub01(x,a,b,res1,z,m)
  call sub02(y,c,b,res2,z,n)
  if (x .ne. y) then
     write(6,*) x
     write(6,*) y
  endif
  do i=1,777
     if (res1(i) .ne. res2(i)) then
        write(6,*) res1(i)
        write(6,*) res2(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
