


subroutine bar(a,val1,val2,val3)
  real,dimension(10,10,10) :: a
  integer :: val1,val2,val3
  a(val1,val2,val3) = val1+val2+val3
end subroutine bar

subroutine sub01(a,b)
  real,dimension(10,10,10) :: a,b
  real,dimension(3) :: ii,jj,kk
  integer :: i,j,k
  kk(1) = 1
  kk(2) = 10
  kk(3) = 1
  jj(1) = 2
  jj(2) = 7
  jj(3) = 2
  ii(1) = 1
  ii(2) = 10
  ii(3) = 1

!$omp parallel  
  do k = kk(1), kk(2),kk(3)
!$omp do collapse(2)
     do j = jj(1), jj(2),jj(3)
        do i = ii(1), ii(2),ii(3)
           call bar(a,i,j,k)
        enddo
     enddo
!$omp end do
  enddo
!$omp end parallel

  do k = kk(1), kk(2),kk(3)
     do j = jj(1), jj(2),jj(3)
        do i = ii(1), ii(2),ii(3)
           call bar(b,i,j,k)
        enddo
     enddo
  enddo

end subroutine sub01


program main
real,dimension(10,10,10) :: a,b
integer :: flag
flag = 0
do k=1,10
   do j=1,10
      do i=1,10
         a(i,j,k) = 0
         b(i,j,k) = 0
      end do
   end do
end do

call sub01(a,b)

do k=1,10
   do j=1,10
      do i=1,10
         if( a(i,j,k) /=  b(i,j,k) ) then 
            flag = 1
            goto 100
         endif
      end do
   end do
end do

100 continue

if(flag .eq. 0) then
   print *,"OK"
else
   print *,"NG",i,j,k,a(i,j,k), b(i,j,k)
endif

end program main
