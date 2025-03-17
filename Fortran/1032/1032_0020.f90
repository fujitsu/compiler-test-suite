program main
  real*8 :: phi,z,rho
  integer ::n
  print *,'pass'
  if (1==1)then
     stop
  endif
  read (*,*) nmax, eps1,eps2, deleps, r0
  do eps0=eps1, eps2, deleps
     rho=exp(r0/2.)
     z=1.

     do n=1,nmax
        print *, n,phi(z,rho,eps0,n)
     enddo
  end do
end program main
recursive function phi(z,rho,eps0,n) result(res)
  real*8 :: z, rho, res
  if(n /= 0) then
     res=2.d0*phi(rho**(z-2.d0),rho,eps0,n-1)- &
          2.d0*phi(rho**(z-3.d0),rho,eps0,n-1) + &
               phi(rho**(2.d0*z-2.d0),rho,eps0,n-1) - &
          2.d0*phi(rho**(2.d0*z-3.d0),rho,eps0,n-1) + &
               phi(rho**(2.d0*z-4.d0),rho,eps0,n-1)
  else
     res=z**(eps0/log(rho))
  end if
end function phi
