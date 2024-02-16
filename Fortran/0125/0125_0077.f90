subroutine sub1(a,b,c1,n,zzz)
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,zzz

  do i=1,n
     if (zzz(i) .eq. 0) then 
        a(i) = b(1,c1(i)) + b(2,c1(i)) + b(3,c1(i)) 
     endif
  enddo

end subroutine sub1

subroutine init(a,b,c1,n,zzz)
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,zzz

  do i=1,n
     do j=1,200
        b(j,i) = j
     enddo
     a(i) = 0.
     c1(i) = i
     zzz(i) = 0
  enddo

end subroutine init

program main
  integer,parameter :: n=100
  integer,parameter :: ans=600
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,zzz

  call init(a,b,c1,n,zzz)
  call sub1(a,b,c1,n,zzz)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main

