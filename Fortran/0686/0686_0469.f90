     real,dimension(3,2)::z
     real,allocatable::b(:,:),c(:,:),d(:,:),e(:,:),f(:,:),g(:,:)
     real::ff(-3:-1,-2:-1),gg(-3:-1,-2:-1),bb(-3:-1,-2:-1),cc(-2:-1,-4:-1)
      allocate(b(-3:-1,-2:-1),c(-2:-1,-4:-1),d(-4:-1,-3:-1))
      allocate(e(-3:-1,-2:-1),f(-3:-1,-2:-1),g(-3:-1,-2:-1))
      b=reshape((/(i,i=1,6)/),(/3,2/))
      c=reshape((/(i,i=1,8)/),(/2,4/))
      d=reshape((/(i,i=1,12)/),(/4,3/))
      e=reshape((/(i,i=1,6)/),(/3,2/))
      i1=-1;i2=-2;i3=-3;i4=-4
!$omp parallel
!$omp single
      f= matmul( matmul(b,c) , matmul(d,e) )
!$omp end single
!$omp workshare
      g= matmul( matmul(b,c) , matmul(d,e) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f= matmul( matmul(b,c) , matmul(d,e) ) + &
         matmul( matmul(b,c) , matmul(d,e) ) - &
         matmul( matmul(b,c) , matmul(d,e) )
!$omp end single
!$omp workshare
      g= matmul( matmul(b,c) , matmul(d,e) ) + &
         matmul( matmul(b,c) , matmul(d,e) ) - &
         matmul( matmul(b,c) , matmul(d,e) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f= matmul( matmul(b,c)+matmul(b,c)-matmul(b,c) , &
                 matmul(d,e)+matmul(d,e)-matmul(d,e) ) + &
                 matmul( matmul(b,c) , matmul(d,e) ) - &
                 matmul( matmul(b,c) , matmul(d,e) )
!$omp end single
!$omp workshare
      g= matmul( matmul(b,c)+matmul(b,c)-matmul(b,c) , &
                 matmul(d,e)+matmul(d,e)-matmul(d,e) ) + &
                 matmul( matmul(b,c) , matmul(d,e) ) - &
                 matmul( matmul(b,c) , matmul(d,e) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f=matmul(matmul(b,c)+matmul(b,c)-matmul(b,c) , &
               matmul(d,e)+matmul(d,e)-matmul(d,e) ) + &
               matmul( matmul(b,c) , matmul(d,e) ) - &
               matmul( matmul(b,c) , matmul(d,e) )
!$omp end single
!$omp workshare
      g=matmul(matmul(b,c)+matmul(b,c)-matmul(b,c) , &
               matmul(d,e)+matmul(d,e)-matmul(d,e) ) + &
               matmul( matmul(b,c) , matmul(d,e) ) - &
               matmul( matmul(b,c) , matmul(d,e) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end single
!$omp workshare
      g= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) + &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                      matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end single
!$omp workshare
      g= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) + &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                      matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end single
!$omp workshare
      g= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) + &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                      matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end single
!$omp workshare
      g= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) + &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                      matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end workshare
      if (any(f/=g)) print *,"fail"
!$omp single
      f= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))+&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))-&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))+&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))-&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+ &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)), &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end single
!$omp workshare
      g= matmul(matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))+&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))-&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))+&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))-&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+ &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)), &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end workshare
!$omp end parallel
      if (any(f/=g)) print *,"fail"
!$omp parallel private(ff),firstprivate(bb,cc)
!$omp single
     ff=matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))+&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))-&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))+&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))-&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+ &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end single copyprivate(ff)
!$omp workshare
     gg=matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))+&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))-&
                matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))+&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))-&
                matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+ &
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
                matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
                 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
!$omp end workshare
      if (any(ff/=gg)) print *,"fail"
!$omp end parallel
      print *,'pass'
      end
