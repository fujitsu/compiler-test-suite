     real,dimension(3,4)::z=&
      reshape((/9.,12.,15.,19.,26.,33.,29.,40.,51.,39.,54.,69./),(/3,4/))

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
!$omp workshare
      g= matmul( &
      z           ,& 
                 matmul(d,e)  +matmul(d,e) )
!$omp end workshare
!$omp end parallel
      print *,'pass'
      end
