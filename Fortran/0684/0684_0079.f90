 call s1
 print *,'pass'
 end
 subroutine s1
  call ss2
  call ss1
 end
 subroutine ss2
          logical,parameter::t=.true.,f=.false.
          logical,dimension(6)::x1=(/t,f,f,f,f,f/)
          logical,dimension(6)::x2=(/t,t,f,f,f,f/)
          logical,dimension(6)::x3=(/t,t,t,f,f,f/)
          logical,dimension(6)::x4=(/t,t,t,t,f,f/)
          logical,dimension(6)::x5=(/t,t,t,t,t,f/)
          integer,dimension(6)::y
  call ss21(x1,x2,x3,x4,x5,y)
  contains
  subroutine ss21(x1,x2,x3,x4,x5,y)
  logical,dimension(:)::x1,x2,x3,x4,x5
  logical,dimension(size(x1))::xx1,xx2,xx3,xx4,xx5
  integer,dimension(:)::y
!$omp parallel default(private) private(xx1,xx2,xx3,xx4,xx5) shared(x1,x2,x3,x4,x5)
!$omp single
xx1=x1;xx2=x2;xx3=x3;xx4=x4;xx5=x5
          y=-1
          where (xx1)
            y=1
          elsewhere(xx2)
            y=2
          elsewhere(xx3)
            y=3
          elsewhere(xx4)
            y=4
          elsewhere(xx5)
            y=5
          elsewhere
            y=6
          end where
          if (any(y/=(/1,2,3,4,5,6/)))print *,"fail"
!$omp end single
!$omp end parallel
  end subroutine
          end
 subroutine ss1
          logical,parameter::t=.true.,f=.false.
          logical,dimension(6)::x1=(/t,f,f,f,f,f/)
          logical,dimension(6)::x2=(/t,t,f,f,f,f/)
          logical,dimension(6)::x3=(/t,t,t,f,f,f/)
          logical,dimension(6)::x4=(/t,t,t,t,f,f/)
          logical,dimension(6)::x5=(/t,t,t,t,t,f/)
          integer,dimension(6)::y
!$omp parallel default(private) firstprivate(x1,x2,x3,x4,x5)
          y=-1
          where (x1)
            y=1
          elsewhere(x2)
            y=2
          elsewhere(x3)
            y=3
          elsewhere(x4)
            y=4
          elsewhere(x5)
            y=5
          elsewhere
            y=6
          end where
          if (any(y/=(/1,2,3,4,5,6/)))print *,"fail"
!$omp end parallel
          end
