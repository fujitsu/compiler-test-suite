      integer a(100)/100*0/, b(100)/100*0/
      do i=3,100
        a(i)=a(i-2)+1
      enddo
!$omp simd simdlen(2) safelen(2)
      do i=3,100
        b(i)=b(i-2)+1
      enddo
      do i=1,100
        if (a(i).ne.b(i)) exit
      enddo
      if (i>100) then
        print*,"OK"
      else
        print*,"NG",i,a(i),b(i)
      endif
      end
