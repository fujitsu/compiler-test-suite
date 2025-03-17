       call s1
       print *,'pass'
       end
       subroutine s1
       type x
          integer a1
          integer b1
       end type
       type y
          integer a2
          type (x):: b2
          type (x):: c2(2)
       end type
       type(y)::c
       parameter(c=y(1,x(2,3),(/x(4,5),x(6,7)/)))
       type(x),parameter::d14=c%c2(2) 
       type(x),parameter::d13=c%c2(1) 
       integer,parameter::d1=c%a2
       type(x),parameter::d11=c%b2
       type(x),parameter,dimension(2)::d12=c%c2
       integer,parameter::d2=c%b2%a1
       integer,parameter::d3=c%c2(2)%a1
       integer,parameter::d4=c%c2(2)%b1
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
