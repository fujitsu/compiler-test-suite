      character*2 ch1,ch2,ch3,ch*6
      data ch1,ch2,ch3/3*'ab'/
      data i1/1/i2/2/
      ch(i1:i2*3)=ch1(i1:i2)//ch2(i1:i2)//ch3(i1:i2)
      if(ch.ne.'ababab') then
                    write(6,*) 'ng'
                         else
                    write(6,*) 'ok'
      end if
      write(6,*) ch
      end
