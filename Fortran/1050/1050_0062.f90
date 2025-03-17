
subroutine bar(a,val1,val2,val3,val4,val5,val6)
  real,dimension(2,10,10,10,10,2) :: a
  integer :: val1,val2,val3,val4,val5,val6

  a(val1,val2,val3,val4,val5,val6) = val1+val2+val3+val4+val5+val6
end subroutine bar


subroutine sub01(init1,end1,step1,init2,end2,step2)
  integer :: init1,end1,step1,init2,end2,step2
  common /my_global/ginit1,gend1,gstep1,ginit2,gend2,gstep2
  integer :: linit1,lend1,lstep1,linit2,lend2,lstep2
  integer :: i,j,k,l,m,n
  real,dimension(2,10,10,10,10,2) :: a,b
  real :: tmp_ans
  integer :: flag
  flag = 0

  linit1=1
  lend1=10
  lstep1=2
  linit2=1
  lend2=8
  lstep2=2
  
  a=0
  b=0



  do n = 1, 2
!$omp parallel
!$omp do collapse(4) 
     do m = init1,9,lstep1
        do l = ginit1, end1, lstep1
           do k = linit1, gend1, step1
              do j = 2, lend1, gstep1
                 do i = 1, 2
                    call bar(a,i,j,k,l,m,n)
                 end do
              enddo
           end do
        end do
     enddo
!$omp end do
!$omp end parallel
  end do

  do n = 1, 2
!$omp parallel
!$omp do collapse(4) 
     do m = linit2,end2,3
        do l = ginit2,lend2,step2
           do k = init2,gend2,lstep2 
              do j = 1,1,gstep2
                 do i = 1, 2
                    call bar(b,i,j,k,l,m,n)
                 end do
              enddo
           end do
        end do
     enddo
!$omp end do
!$omp end parallel
  end do


  do n = 1, 2
     do m = init1,9,lstep1
        do l = ginit1, end1, lstep1
           do k = linit1, gend1, step1
              do j = 2, lend1, gstep1
                 do i = 1, 2
                    tmp_ans1 = i+j+k+l+m+n
                    if(a(i,j,k,l,m,n) .ne. tmp_ans1) then 
                       flag = 1
                       goto 100
                    end if
                 end do
              enddo
           end do
        end do
     enddo
  end do


  do n = 1, 2
     do m = linit2,end2,3
        do l = ginit2,lend2,step2
           do k = init2,gend2,lstep2 
              do j = 1,1,gstep2
                 do i = 1, 2
                    tmp_ans = i+j+k+l+m+n
                    if(b(i,j,k,l,m,n) .ne. tmp_ans) then 
                       flag = 2
                       goto 100
                    end if
                 end do
              enddo
           end do
        end do
     enddo
  end do


100 continue

  if(flag .eq. 0 ) then
     print *,"OK"
  else
     print *,"NG",flag
  end if

end subroutine sub01


program main
integer :: init1,end1,step1,init2,end2,step2
common /my_global/ginit1,gend1,gstep1,ginit2,gend2,gstep2

init1=1
end1=10
step1=1
init2=2
end2=10
step2=2

ginit1=3
gend1=10
gstep1=1
ginit2=2
gend2=8
gstep2=3


call sub01(init1,end1,step1,init2,end2,step2)

end program main
