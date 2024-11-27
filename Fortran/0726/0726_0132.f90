 call s1
 print *,'pass'
 end
 subroutine s1
          logical,parameter::t=.true.,f=.false.
          logical,dimension(5)::x1=(/t,f,t,f,t/)
          logical,dimension(5)::x2=(/t,t,t,f,t/)
          integer,dimension(5)::y
          y=-1
          where (x1)
            y=5
          elsewhere(x2)
            y=6
          elsewhere
            y=7
          end where
          if (any(y/=(/5,6,5,7,5/)))write(6,*) "NG"
          y=-1
          where (x1)
            y=2
          end where
          if (any(y/=(/2,-1,2,-1,2/)))write(6,*) "NG"
          y=-1
          where (x1)
            y=3
          elsewhere
            y=4
          end where
          if (any(y/=(/3,4,3,4,3/)))write(6,*) "NG"
          end
