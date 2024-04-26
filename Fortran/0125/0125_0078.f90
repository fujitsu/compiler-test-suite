subroutine sub1(a,b,c1,c2,n,zzz)
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,zzz

  do i=1,n
     a(i) = b(1,c1(i)) + b(2,c1(i)) + b(3,c1(i)) 
     if (zzz(i) .eq. 0) then 
        a(i) = a(i) + b(4,c1(i)) + b(5,c1(i)) + b(6,c1(i)) + b(1,c2(i)) + b(3,c2(i)) + b(5,c2(i))
     else
        a(i) = a(i) + b(7,c1(i)) + b(8,c1(i)) + b(9,c1(i)) + b(100,c2(i)) + b(101,c2(i)) + b(102,c2(i))
     endif
  enddo

end subroutine sub1

subroutine init(a,b,c1,c2,c3,n,zzz)
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3,zzz

  do i=1,n
     do j=1,200
        b(j,i) = j
     enddo
     a(i) = 0.
     c1(i) = i
     c2(i) = i
     c3(i) = i
     zzz(i) = 0
  enddo

end subroutine init

program main
  integer,parameter :: n=100
  integer,parameter :: ans=3000
  real(8), dimension(1:n) :: a
  real(8), dimension(200,1:n) :: b
  integer(8), dimension(1:n) :: c1,c2,c3,zzz

  call init(a,b,c1,c2,c3,n,zzz)
  call sub1(a,b,c1,c2,n,zzz)

  if (int(sum(a)) .eq. ans) then 
     print *,"OK"
  else
     print *,"NG"
  endif
end program main
