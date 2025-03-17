      subroutine s1
      integer nmx,nysum,noy
      parameter ( nmx   = 10 ,nysum = 10 , noy   =  1 )
      real*8 ,dimension(0:2*nmx,0:2*nysum*noy)::arr1,arr2
      arr1 = 0.0
      arr2 = 10
      arr1(1:2*nmx,1:2*nysum*noy) = arr2(1:2*nmx,1:2*nysum*noy)
      if (any(arr1(0,:)/=0))write(6,*) "NG"
      end
      subroutine s2
      integer nmx,nysum,noy
      parameter ( nmx   = 10 ,nysum = 10 , noy   =  1 )
      real*8 ,dimension(0:20,0:20)::arr1,arr2
      arr1 = 0.0
      arr2 = 10
      arr1(1:20,1:2*nysum*noy) = arr2(1:2*nmx,1:2*nysum*noy)
      if (any(arr1(0,:)/=0))write(6,*) "NG"
      end
      subroutine s3
      integer nmx,nysum,noy
      parameter ( nmx   = 10 ,nysum = 10 , noy   =  1 )
      real*8 ,dimension(0:20,0:20)::arr1,arr2
      arr1 = 0.0
      arr2 = 10
      arr1(1:20,1:20) = arr2(1:2*nmx,1:2*nysum*noy)
      if (any(arr1(0,:)/=0))write(6,*) "NG"
      end
      subroutine s4
      real*8 ,dimension(0:20,0:20)::arr1,arr2
      arr1 = 0.0
      arr2 = 10
      arr1(1:20,1:20) = arr2(1:20,1:20)
      if (any(arr1(0,:)/=0))write(6,*) "NG"
      end
      subroutine s5
      real*8 ,dimension(0:20,0:20)::arr1
      arr1 = 0.0
      arr1(1:20,1:20) = 10
      if (any(arr1(0,:)/=0))write(6,*) "NG"
      end
      subroutine s6
      real*8 ,dimension(0:20)::arr1
      arr1 = 0.0
      arr1(1:20) = 10
      if (arr1(0)/=0)write(6,*) "NG"
      end
      call s1
      call s2
      call s3
      call s4
      call s5
      call s6
      print *,'pass'
      end
