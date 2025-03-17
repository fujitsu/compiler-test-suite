      integer x(10)
      integer,parameter::ans=5
      integer,allocatable::tmp
      allocate(tmp)
      tmp=ans
!$omp parallel do simd private(tmp)
      do i=1,10
        tmp=i
        x(i)=tmp 
      enddo
      if ((tmp.ne.ans).or.(any(x/=[1,2,3,4,5,6,7,8,9,10]))) then
        print*,"NG:",tmp,x
        stop 1
      endif
      print*,"OK"
      end
