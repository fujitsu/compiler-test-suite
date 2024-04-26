      real*8 adm(8)/8*0/,ck(8)/1,2,3,4,5,6,7,8/,c2,res(8)
      data res/1.151127511459422,0.5895538838284597,
     +         1.324737910800088,2.680754788451440,
     +         3.410888853062094,2.843858212814768,
     +         1.500988223357080,0.6169073600341779/
      do 50 i=1,8
      c2=cos(2+ck(i))+sin(2+ck(i))
      adm(i)=c2+2
   50 continue

      do i=1,8
         if (abs(adm(i)-res(i)) .gt. 0.0005) then
            goto 10
         endif
      enddo
      write(6,*) ' ## ok ##'
      goto 20
 10   write(6,*) ' ## ng ##'
      write(6,*) adm
      write(6,*) res
 20   continue
      end
