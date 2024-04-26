      call sub1
      call chk
      print *,'pass'
      end

      subroutine sub1()
       common // im1,im2,im3
        namelist /nam/im1,im2,im3
        im1=10
        im2=10
        im3=10
!$omp parallel 
!$omp do reduction (+:im1,im3)
      do j=1,10  
        im1 = im1 + 1
        im3 = im3 + 1
        write(1,nam)
      enddo
!$omp enddo
!$omp end parallel
        write(1,nam)
      end

      subroutine chk
        namelist /nam/im1,im2,im3
      rewind 1
      do i=1,100
      read(1,nam,end=100)
      if (im1>=1 .and. im1<=5 .or. im1==20) then
      else
        print *,101,i,im1 
      endif
      if (im2==20 .or. im2==10) then
      else
        print *,102,i,im2 
      endif
      if (im3>=1 .and. im3<=5 .or. im3==20) then
      else
        print *,103,i,im1 
      endif
      end do
100   end

  

