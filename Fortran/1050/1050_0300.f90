
subroutine bar(a,val1,val2,val3,val4)
  real,dimension(-10:10,-10:10,-10:10,-10:10) :: a
  integer :: val1,val2,val3,val4
  a(val1,val2,val3,val4) = val1+val2+val3+val4
end subroutine bar


subroutine sub01(il,iu,is,jl,ju,js,kl,ku,ks,ll,lu,ls,a,b)
  integer :: il,iu,is,jl,ju,js,kl,ku,ks,ll,lu,ls
  real,dimension(-10:10,-10:10,-10:10,-10:10) :: a,b

print *,"-- loop(lastprivate) --"  
!$omp parallel
!$omp do collapse(3) lastprivate(i,j,k,l)  
do l = -ll, -lu, -ls
   do k = -kl, -ku, -ks
      do j = -jl, -ju, -js
         do i = -il, -iu, -is
            call bar(a,i,j,k,l)
         end do
      enddo
   enddo
enddo
!$omp end do
!$omp end parallel

print *,i,j,k,l
print *,sum(a)

do l = -ll, -lu, -ls
   do k = -kl, -ku, -ks
      do j = -jl, -ju, -js
         do i = -il, -iu, -is
            call bar(b,i,j,k,l)
         end do
      enddo
   enddo
enddo

print *,i,j,k,l
print *,sum(b)

end subroutine sub01


program main
real,dimension(-10:10,-10:10,-10:10,-10:10) :: a,b
integer :: si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl
integer,parameter :: test_num = 49
integer :: flag,m

open(17, file='./008.dat', status='old')

do m=1,test_num

   flag = 0

   do l =-10,10
      do k =-10,10
         do j=-10,10
            do i=-10,10
               a(i,j,k,l) = 0
               b(i,j,k,l) = 0
            end do
         end do
      end do
   end do
   
   read(17,*) si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl
   print *," === loop:",m
   sk = sk * (-1)
   ek = -1 * ek
   inck = -inck
   sj = -sj
   ej = ej * (-1)
   incj = -1 * incj
   si = -1 * si
   ei = -ei
   inci = inci * (-1)
   sl = -1 * sl
   el = -el
   incl = incl * (-1)


   print *,"input:",si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl
   call sub01(si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl,a,b)

   do l =-10,10
      do k =-10,10
         do j=-10,10
            do i=-10,10
               if (a(i,j,k,l) .ne. b(i,j,k,l) ) then
                  flag = 1
                  goto 777
               end if
            end do
         end do
      end do
   end do

777 continue

   if(flag .eq. 0) then
      print *,"[[[ OK ]]]"
   else
      print *,"<<< NG >>>:"," i=",i," j=",j," k=",k," l=",l," ",a(i,j,k,l)," ",b(i,j,k,l)
   end if
end do


close(17)

print *,sum(a)

end program main
