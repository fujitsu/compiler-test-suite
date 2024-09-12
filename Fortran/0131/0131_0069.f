c
       program   main
       real      x,s,func
       real      s2,s4,sum
       real      rst,Pi
       integer   i
       data rst/3.14/
c
       func(x)=1.0/(1.0+x*x)
       s = (func(0.0) + func(1.0)) * 0.5
       do 100 i=1,9,1
             s = s+func(i/10.0)
  100  continue
       Pi = 0.4*s
       write(6,*) Pi
       if(0.4*s-rst .lt. 1.0e-2) then
           write(6,*) ' test===> ok '
       else
           write(6,*) ' test===> ng '
       end if
       s2 = 0.0
       s4 = func(0.1)
       do 200 i=2,9,2
             x = i/10.0
             s2 = s2+func(x)
             s4 = s4+func(x+0.1)
  200  continue
c
       sum = (func(0.0)+func(1.0)+4.0*s4+2.0*s2)/3.0
       write(6,*) 0.4*sum
c
       if(abs(0.4*s-rst) .lt. 1.0e-2) then
           write(6,*) ' test===> ok '
       else
           write(6,*) ' test===> ng '
       end if
       stop
       end
