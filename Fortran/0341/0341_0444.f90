program main
  parameter (iimax=20)
  parameter (imax=20, jmax=imax, kmax=imax)
  real :: a(imax,kmax), b(kmax,jmax), c(imax,jmax)
  real :: ans1,res1

  ans1=882000

  do j=1,jmax
     do i=1,imax
        c(i,j)=0.0
        a(i,j)=real(i)
        b(i,j)=real(j)
     enddo
  enddo
  print *,"---"
    
  ii=b(imax,imax)*b(imax,imax)

  do j=1,jmax
     do k=1,kmax
        do i=1,imax
           if (ii.ge.iimax) then
              c(i,j)=c(i,j)+a(i,k)*b(k,j)
           end if
        enddo
     enddo
  enddo


  res1=sum(c)
    
  if(res1 == ans1) then
     print *,"ok"
  else
     print *,"ng",res1
  end if

end program main
