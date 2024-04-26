subroutine sub(n,k)
  real(8) :: s1,s2,s3,s4 
  real(8) :: g1,g2,g3,g4 
  common/ss/s1(10),s2(10),s3(10),s4(10)
  common/gg/g1(10),g2(10),g3(10),g4(10)

  do i=1,n
     if(k .eq. 1) g1(i)=s1(i)
     if(k .eq. 2) g2(i)=s2(i)
     if(k .eq. 3) g3(i)=s3(i)
     if(k .eq. 4) g4(i)=s4(i)
  enddo

end subroutine sub

program main
  integer,parameter :: n=10
  real(8) :: s1,s2,s3,s4 
  real(8) :: g1,g2,g3,g4 
  common/ss/s1(n),s2(n),s3(n),s4(n)
  common/gg/g1(n),g2(n),g3(n),g4(n)
  real(8),parameter :: res = 30.

  g1 = 0.0
  g2 = 0.0
  g3 = 0.0
  g4 = 0.0

  s1 = 1.0
  s2 = 2.0
  s3 = 3.0
  s4 = 4.0

  call sub(n,3)

  if (sum(g1) /= 0.) then
     print *, "ng ", "g1 = ", sum(g1)
  else if (sum(g2) /= 0.) then
     print *, "ng ", "g2 = ", sum(g2)
  else if (sum(g3) /= res) then
     print *, "ng ", "g3 = ", sum(g3)
  else if (sum(g4) /= 0.) then
     print *, "ng ", "g4 = ", sum(g4)
  else
     print *, "ok"
  endif

end program main
