
subroutine bar(a,val1,val2,val3)
  real,dimension(-50:50,-50:50,-50:50) :: a
  integer :: val1,val2,val3
  a(val1,val2,val3) = val1+val2+val3
end subroutine bar


subroutine sub01(kl,ku,ks,jl,ju,js,il,iu,is,a,b)
  integer :: il,iu,is,jl,ju,js,kl,ku,ks
  real,dimension(-50:50,-50:50,-50:50) :: a,b

!$omp parallel  
!$omp do collapse(2)
do k = -kl, -ku, -ks
   do j = -jl, -ju, -js
      do i = -il, -iu, -is
         call bar(a,i,j,k)
      enddo
   enddo
enddo
!$omp end do
!$omp end parallel

do k = -kl, -ku, -ks
   do j = -jl, -ju, -js
      do i = -il, -iu, -is
         call bar(b,i,j,k)
      enddo
   enddo
enddo


end subroutine sub01


program main
real,dimension(-50:50,-50:50,-50:50) :: a,b
integer :: si,ei,inci,sj,ej,incj,sk,ek,inck
integer,parameter :: test_num = 48
integer :: flag

open(17, file='./009.dat', status='old')

do m=1,test_num
   print *,"testNum:",m
   flag = 0

   do k =-50,50
      do j=-50,50
         do i=-50,50
            a(i,j,k) = 0
            b(i,j,k) = 0
         end do
      end do
   end do

   read(17,*) sk,ek,inck,sj,ej,incj,si,ei,inci
   sk = sk * (-1)
   ek = -1 * ek
   inck = -inck
   sj = -sj
   ej = ej * (-1)
   incj = -1 * incj
   si = -1 * si
   ei = -ei
   inci = inci * (-1)

   print *,sk,ek,inck,sj,ej,incj,si,ei,inci
   call sub01(sk,ek,inck,sj,ej,incj,si,ei,inci,a,b)

   do k =-50,50
      do j=-50,50
         do i=-50,50
            if (a(i,j,k) .ne. b(i,j,k) ) then
               flag = 1
               goto 777
            end if
         end do
      end do
   end do

777 continue

   if(flag .eq. 0) then 
      print *,"[[[ OK ]]]"
   else
      print *,"<<< NG >>>:"," i=",i," j=",j," k=",k," ",a(i,j,k)," ",b(i,j,k) 
   end if
end do




close(17)


end program main
