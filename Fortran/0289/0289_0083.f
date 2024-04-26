      integer*4 i04a   ,i04b,i,error1,error2
      integer*4 w_i04a
      pointer (pi04a,i04a)
      real*4    r04a(3,3,3),r04b(3,3,3),r04c(3,3,3),cvalue
      real,allocatable,dimension(:,:,:)::w_r04a
      pointer (pr04a ,r04a)
      complex*8 c08a(3,3,3),c08b(3,3,3),c08c(3,3,3)
      complex,dimension(3,3,3)::w_c08a,w_c08b
      pointer (pc08a ,c08a),(pc08b ,c08b)
      data (((r04b(i,j,n),n=1,3),j=1,3),i=1,3)/27*1.0/
     .    ,(((r04c(i,j,n),n=1,3),j=1,3),i=1,3)
     .                       /27*1.8414707/
     .    ,(((w_c08b(i,j,n),n=1,3),j=1,3),i=1,3)
     .                       /27*(1.0,0.1)/
     .    ,(((c08c(i,j,n),n=1,3),j=1,3),i=1,3)
     .         /27*(1.1411200,0.10000002)/
     .    ,cvalue,error1,error2/1.0e-6,0,0/
      pi04a = loc (w_i04a)
      i04a=aint(0.3)
      i04b=i04a+1
      allocate (w_r04a(3,3,3))
      pr04a = loc (w_r04a(1,1,1))
      r04a=r04b+sin(dble(i04a+1))
      pc08a = loc (w_c08a(1,1,1))
      pc08b = loc (w_c08b(1,1,1))
      c08a=c08b+sin(cmplx(i04b+2))
      do 10 j=1,3
        do 10 n=1,3
          do 10 i=1,3
            if (abs(r04a(i,n,j) - r04c(i,n,j)) .gt. cvalue) then
              error1=error1+1
            endif
            if (abs(c08a(i,n,j) - c08c(i,n,j)) .gt. cvalue) then
              error2=error2+1
            endif
   10 continue
      deallocate (w_r04a)
      if (error1 .eq. 0 .and. error2 .eq. 0) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ***'
      endif
      stop
      end
