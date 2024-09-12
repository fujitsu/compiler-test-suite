
subroutine sub01(a,c,z1,z2,m1,m2)
  integer(kind=8) i
  real(kind=8) z1, z2, a(777), c(777), tmp
  real(kind=8) m1, m2
  
  n = 777
  do i=1,n
     tmp = a(i)
     
     if(tmp .lt. z1) then
        z1 = tmp
     endif
     if(tmp .le. z2) then
        z2 = tmp
     endif
     
     if(tmp .gt. m1) then
        m1 = tmp
     endif
     if(tmp .ge. m2) then
        m2 = tmp
     endif
  end do
  c = z1 + z2 + m1 + m2
end subroutine sub01

subroutine sub02(a,c,z1,z2,m1,m2)
  integer(kind=8) i
  real(kind=8) z1, z2, a(777), c(777), tmp
  real(kind=8) m1, m2
  
  n = 777
  do i=1,n
     tmp = a(i)
     
     if(tmp .lt. z1) then
        z1 = tmp
     endif
     if(tmp .le. z2) then
        z2 = tmp
     endif
     
     if(tmp .gt. m1) then
        m1 = tmp
     endif
     if(tmp .ge. m2) then
        m2 = tmp
     endif
  end do
  c = z1 + z2 + m1 + m2
end subroutine sub02

program main
  real(kind=8) a(777)/777*0/, c(777)/777*0/
  real(kind=8) z1/1/, z2/1/
  real(kind=8) m1/1/, m2/1/
  real(kind=8) res1(777)/777*0/, res2(777)/777*0/
  integer(kind=8) i

  do i=1,777
     a(i) = mod(i,3)
     c(i) = mod(i,3)
  end do
  call sub01(a,res1,z1,z2,m1,m2)
  call sub02(c,res2,z1,z2,m1,m2)
  do i=1,777
     if (res1(i) .ne. res2(i)) then
        write(6,*) res1(i)
        write(6,*) res2(i)
        stop
     endif
  enddo
  write(6,*) "ok"

end program main
