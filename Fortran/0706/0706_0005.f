       call s1
       print *,'pass'
       end
       subroutine s1
       call ss1
       call ss2
       end
       subroutine ss1
       type x
          integer a1
          integer b1
       end type
       type y
          integer a2
          type (x):: b2
          type (x):: c2(2)
       end type
       type h
         integer cx
         type(y)::c
       end type
       type (h)::g
       parameter(g=h(-1,y(1,x(2,3),(/x(4,5),x(6,7)/))))
       type(x),parameter::d14=g%c%c2(2) 
       type(x),parameter::d13=g%c%c2(1) 
       integer,parameter::d1=g%c%a2
       type(x),parameter::d11=g%c%b2
       type(x),parameter,dimension(2)::d12=g%c%c2
       integer,parameter::d2=g%c%b2%a1
       integer,parameter::d3=g%c%c2(2)%a1
       integer,parameter::d4=g%c%c2(2)%b1
       if (d1/=1)print *,'fail'
       if (d11%a1/=2)print *,'fail'
       if (d11%b1/=3)print *,'fail'
       if (d12(1)%a1/=4)print *,'fail'
       if (d12(1)%b1/=5)print *,'fail'
       if (d12(2)%a1/=6)print *,'fail'
       if (d12(2)%b1/=7)print *,'fail'
       if (d13%a1/=4)print *,'fail'
       if (d13%b1/=5)print *,'fail'
       if (d14%a1/=6)print *,'fail'
       if (d14%b1/=7)print *,'fail'
       if (d2/=2)print *,'fail'
       if (d3/=6)print *,'fail'
       if (d4/=7)print *,'fail'
       end
       subroutine ss2
       type x
          integer a1
          integer b1
       end type
       type y
          integer a2
          type (x):: b2
          type (x):: c2(2)
       end type
       type h
         integer cx
         type(y)::c(2)
       end type
       type (h)::g
       parameter(g=h(-1,
     1       (/ y(11,x(12,13),(/x(14,15),x(16,17)/)) ,
     1          y( 1,x( 2, 3),(/x( 4, 5),x( 6, 7)/)) /) ))
       type(x),parameter::d14=g%c(2)%c2(2) 
       type(x),parameter::d13=g%c(2)%c2(1) 
       integer,parameter::d1=g%c(2)%a2
       type(x),parameter::d11=g%c(2)%b2
       type(x),parameter,dimension(2)::d12=g%c(2)%c2
       integer,parameter::d2=g%c(2)%b2%a1
       integer,parameter::d3=g%c(2)%c2(2)%a1
       integer,parameter::d4=g%c(2)%c2(2)%b1
       if (d1/=1)print *,'fail'
       if (d11%a1/=2)print *,'fail'
       if (d11%b1/=3)print *,'fail'
       if (d12(1)%a1/=4)print *,'fail'
       if (d12(1)%b1/=5)print *,'fail'
       if (d12(2)%a1/=6)print *,'fail'
       if (d12(2)%b1/=7)print *,'fail'
       if (d13%a1/=4)print *,'fail'
       if (d13%b1/=5)print *,'fail'
       if (d14%a1/=6)print *,'fail'
       if (d14%b1/=7)print *,'fail'
       if (d2/=2)print *,'fail'
       if (d3/=6)print *,'fail'
       if (d4/=7)print *,'fail'
       end
