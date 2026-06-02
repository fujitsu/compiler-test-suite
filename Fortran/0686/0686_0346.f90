    block data
      integer(4),dimension(8),target::a
      integer(4),dimension(:),pointer::p
      common /com/ a,p
!$omp threadprivate(/com/)
      data a /8*0/
      data p /null()/
    end block data

    program ompv2
      integer(4),dimension(8),target::a
      integer(4),dimension(:),pointer::p
      integer(4),external::OMP_GET_THREAD_NUM
      common /com/ a,p
!$omp threadprivate(/com/)

!$omp parallel copyin(p,a),private(me)
      if (associated(p)) print *,"fail"
      me=OMP_GET_THREAD_NUM()+1
      a(me)=me
!$omp single
      me_shared=me
      p=>a
      goto (100,200,300,400,500,600,700,800) me
  100 p(1)=p(1)+1
      goto 1000
  200 p(2)=p(2)+1
      goto 1000
  300 p(3)=p(3)+1
      goto 1000
  400 p(4)=p(4)+1
      goto 1000
  500 p(5)=p(5)+1
      goto 1000
  600 p(6)=p(6)+1
      goto 1000
  700 p(7)=p(7)+1
      goto 1000
  800 p(8)=p(8)+1
      goto 1000
 1000 continue
!$omp end single copyprivate(a,p)
      select case (me_shared)
        case(1)
          if (any(p/=(/2,0,0,0,0,0,0,0/))) print *,"fail"
        case(2)
          if (any(p/=(/0,3,0,0,0,0,0,0/))) print *,"fail"
        case(3)
          if (any(p/=(/0,0,4,0,0,0,0,0/))) print *,"fail"
        case(4)
          if (any(p/=(/0,0,0,5,0,0,0,0/))) print *,"fail"
        case(5)
          if (any(p/=(/0,0,0,0,6,0,0,0/))) print *,"fail"
        case(6)
          if (any(p/=(/0,0,0,0,0,7,0,0/))) print *,"fail"
        case(7)
          if (any(p/=(/0,0,0,0,0,0,8,0/))) print *,"fail"
        case(8)
          if (any(p/=(/0,0,0,0,0,0,0,9/))) print *,"fail"
      end select
!$omp end parallel
      print *,'pass'
    end program ompv2
