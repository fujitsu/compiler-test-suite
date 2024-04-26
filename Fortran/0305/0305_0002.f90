program main
  real ra(50),rb(50),rc(50),rg(50)
  data ra/5*1,5*2,5*3,5*4,5*5,5*6,5*7,5*8,5*9,5*10/
  data rb/10*2,10*9,10*4,10*3,10*10/
  data rc/10*3,10*8,10*3,10*7,10*11/,rg/50*0/
  
  do 100 i=1,50
     rg(i)=rg(i)+1
     if (ra(i).eq.1) then
        rg(i)=rg(i)+rb(i)
     elseif (ra(i).eq.2) then
        rg(i)=rg(i)+rc(i)
     elseif (ra(i).eq.3) then
        rg(i)=rg(i)*rb(i)
     elseif (ra(i).eq.4) then
        rg(i)=rg(i)*rc(i)
     elseif (ra(i).eq.5) then
        rg(i)=rg(i)-rb(i)
     elseif (ra(i).eq.6) then
        rg(i)=rg(i)-rc(i)
     elseif (ra(i).eq.7) then
        rg(i)=rg(i)+rb(i)*2
     elseif (ra(i).eq.8) then
        rg(i)=rg(i)+rc(i)*2
     elseif (ra(i).eq.9) then
        rg(i)=rg(i)-rb(i)*2
     elseif (ra(i).eq.10) then
        rg(i)=0
     endif
100  continue
     write(6,* ) ' ************* rg ***********'
     write(6,10) rg
10   format(5f15.7)
end program
