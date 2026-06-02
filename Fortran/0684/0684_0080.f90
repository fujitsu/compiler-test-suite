 call s1
 print *,'pass'
 end
 subroutine s1
          logical,parameter::t=.true.,f=.false.
          logical,dimension(6)::x1=(/t,f,f,f,f,f/)
          logical,dimension(6)::x2=(/t,t,f,f,f,f/)
          integer,dimension(6)::y
  call ss21(x1,x2,y)
  contains
  subroutine ss21(x1,x2,y)
  logical,dimension(:)::x1,x2
  logical,dimension(size(x1))::xx1,xx2
  integer,dimension(:)::y
!$omp parallel default(private) shared(x1,x2)
!$omp single
xx1=x1;xx2=x2
          y=-1
          where (xx1)
            y=1
          elsewhere(xx2)
            y=2
          elsewhere
            y=6
          end where
          if (any(y/=(/1,2,6,6,6,6/)))print *,"fail"
!$omp end single
!$omp end parallel
  end subroutine
          end
