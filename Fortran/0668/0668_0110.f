      program main

      integer*4   ia1(10) ,ia2(10)
      logical*4   l4a1(10)

      data ia1/10*1/,ia2/10*2/
      data l4a1/5*.false.,5*.true./

      write(6,*) 'program main'

      do 10 i=1,8
      if(i.le.4) then
        ia1(i)=ia2(i)+1
        ia1(i+2)=ia2(i+1)+1
        else
        ia2(i)=ia1(i)+1
        ia2(i+2)=ia1(i+1)+1
        endif
   10 continue
      write(6,*) 'loop-10'
      write(6,*) ia1
      write(6,*) ia2

      do 20 i=1,8
      if(l4a1(i)) then
        ia1(i)=ia2(i)+1
        ia1(i+2)=ia2(i+1)+1
        else
        ia2(i)=ia1(i)+1
        ia2(i+2)=ia1(i+1)+1
        endif
   20 continue
      write(6,*) 'loop-20'
      write(6,*) ia1
      write(6,*) ia2

      do 30 i=1,8
        ia1(i+2)=ia2(i+1)+1
        ia2(i+2)=ia1(i+1)+1
        if(i.le.4) then
          ia1(i)=ia2(i)+1
          else
          ia2(i)=ia1(i)+1
          endif
   30 continue
      write(6,*) 'loop-30'
      write(6,*) ia1
      write(6,*) ia2

      do 40 i=1,10
        if(i.eq.1)  ia1(i+9)=ia1(i+9)+1
        if(i.eq.2)  ia2(i+7)=ia2(i+7)+1
        if(i.eq.3)  ia1(i+5)=ia1(i+5)+1
        if(i.eq.4)  ia2(i+3)=ia2(i+3)+1
        if(i.eq.5)  ia1(i+1)=ia1(i+1)+1
        if(i.eq.6)  ia2(i-1)=ia2(i-1)+1
        if(i.eq.7)  ia1(i-3)=ia1(i-3)+1
        if(i.eq.8)  ia2(i-5)=ia2(i-5)+1
        if(i.eq.9)  ia1(i-7)=ia1(i-7)+1
        if(i.eq.10) ia2(i-9)=ia2(i-9)+1
   40 continue
      write(6,*) 'loop-40'
      write(6,*) ia1
      write(6,*) ia2

      end
