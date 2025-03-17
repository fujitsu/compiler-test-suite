

program main
integer :: a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
integer :: a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2,l2,m2,n2,o2,p2,q2,r2,s2,t2,u2,v2,w2,x2
real,parameter :: ans = 16384.0
real :: res

res = 0

!$omp parallel
!$omp do collapse(50) reduction(+:res)
  do a = 1, 2, 1
  do b = 1, 2, 1
  do c = 1, 2, 1
  do d = 1, 2, 1
  do e = 1, 2, 1
  do f = 1, 1, 1
  do g = 1, 1, 1
  do h = 1, 1, 1
  do i = 1, 1, 1
  do j = 1, 1, 1
  do k = 1, 1, 1
  do l = 1, 1, 1
  do m = 1, 2, 1
  do n = 1, 1, 1
  do o = 1, 1, 1
  do p = 1, 1, 1
  do q = 1, 1, 1
  do r = 1, 1, 1
  do s = 1, 1, 1
  do t = 1, 1, 1
  do u = 1, 1, 1
  do v = 1, 1, 1
  do w = 1, 1, 1
  do x = 1, 1, 1
  do y = 1, 1, 1
  do z = 1, 1, 1

  do a2 = 1, 2, 1
  do b2 = 1, 2, 1
  do c2 = 1, 2, 1
  do d2 = 1, 1, 1
  do e2 = 1, 1, 1
  do f2 = 1, 1, 1
  do g2 = 1, 1, 1
  do h2 = 1, 1, 1
  do i2 = 1, 1, 1
  do j2 = 1, 1, 1
  do k2 = 1, 1, 1
  do l2 = 1, 1, 1
  do m2 = 1, 1, 1
  do n2 = 1, 1, 1
  do o2 = 1, 1, 1
  do p2 = 1, 1, 1
  do q2 = 1, 1, 1
  do r2 = 1, 1, 1
  do s2 = 1, 1, 1
  do t2 = 1, 2, 1
  do u2 = 1, 2, 1
  do v2 = 1, 2, 1
  do w2 = 1, 2, 1
  do x2 = 1, 2, 1
        res = res +1
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo

  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
  enddo
!$omp end do
!$omp end parallel

  if(res .eq. ans) then 
     print *,"OK"
  else
     print *,"NG",res,ans
  endif

end program main

