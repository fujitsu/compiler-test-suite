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
  integer,dimension(:)::y
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
          if (any(y/=(/1,2,3,4,5,6/)))write(6,*) "NG"
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
          if (any(y/=(/1,2,3,4,5,6/)))write(6,*) "NG"
          end
