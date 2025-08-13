
subroutine bar(a,val1,val2,val3,val4,val5)
  real,dimension(-10:10,-10:10,-10:10,-10:10,-10:10) :: a
  integer :: val1,val2,val3,val4,val5
  a(val1,val2,val3,val4,val5) = val1+val2+val3+val4+val5
end subroutine bar


subroutine sub01(il,iu,is,jl,ju,js,kl,ku,ks,ll,lu,ls,ml,mu,ms,a,b)
  integer :: il,iu,is,jl,ju,js,kl,ku,ks,ll,lu,ls,ml,mu,ms
  real,dimension(-10:10,-10:10,-10:10,-10:10,-10:10) :: a,b
  integer :: i,j,k,l,m

  print *,"-- loop(lastprivate) --"  
!$omp parallel
!$omp do collapse(4) lastprivate(i,j,k,l,m)  
    do m = ml, mu, ms
       do l = ll, lu, ls
          do k = kl, ku, ks
             do j = jl, ju, js
                do i = il, iu, is
                   call bar(a,i,j,k,l,m)
                end do
             end do
          enddo
       enddo
    enddo
!$omp end do
!$omp end parallel    
    print *,i,j,k,l,m
    print *,sum(a)
  
    print *,"-- loop(private) --"  
    do m = ml, mu, ms
       do l = ll, lu, ls
          do k = kl, ku, ks
             do j = jl, ju, js
                do i = il, iu, is
                   call bar(b,i,j,k,l,m)
                end do
             end do
          enddo
       enddo
    enddo

print *,i,j,k,l,m
print *,sum(b)

end subroutine sub01


program main
real,dimension(-10:10,-10:10,-10:10,-10:10,-10:10) :: a,b
integer :: si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl,sm,em,incm
integer,parameter :: test_num = 49
integer :: flag,z


open(17, file='./005.dat', status='old')

do z=1,test_num

   flag = 0

   a = 0_8
   b = 0_8

   read(17,*) si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl,sm,em,incm
   print *,"=== loopNum :",z
   print *,"input:",si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl,sm,em,incm
   call sub01(si,ei,inci,sj,ej,incj,sk,ek,inck,sl,el,incl,sm,em,incm,a,b)



   do m = -10,10
      do l = -10,10
         do k = -10,10
            do j= -10,10
               do i= -10,10
                  if (a(i,j,k,l,m) .ne. b(i,j,k,l,m) ) then
                     flag = 1
                     goto 777
                  end if
               end do
            end do
         end do
      end do
   end do
777 continue


   if(flag .eq. 0) then
      print *,"[[[ OK ]]]"
   else
      print *,"<<< NG >>>:"," i=",i," j=",j," k=",k," l=",l," m=",m," ",a(i,j,k,l,m)," ",b(i,j,k,l,m)
   end if

end do

close(17)

print *,sum(a)

end program main
