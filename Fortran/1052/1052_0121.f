      real*8,target:: a(100)
      real*8,target:: b(100)
!dec$ attributes align:64::a
!dec$ attributes align:64::b
      real*8,pointer:: aa(:)
      real*8,pointer:: bb(:)
      allocate(aa(100),bb(100))
      aa => a
      bb => b
      do i=1,100
        aa(i) = real(i,8)
      enddo
!$omp simd aligned(aa,bb:64)
      do i=1,100
        bb(i) = aa(i)
      enddo
      do i=1,100
        if (a(i).ne.b(i)) exit
      enddo
      if (i.ne.101) then
        print*,"NG", i, a(i), b(i)
        stop 1
      else
        print*,"OK"
      endif
      end 
