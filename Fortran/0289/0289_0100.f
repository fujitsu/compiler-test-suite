      program main
      real*4 aa(10,10),x(10),y(10),z(10),t(10)
      do 100 i=1,10
        do 100 j=1,10
          aa(j,i)=0.0
          if(i.le.1) then
            x(j)=0
            y(j)=0
            z(j)=0
          endif
  100 continue
      do 200 ii=1,10
        x(ii)=aa(ii,ii)
        if(mod(ii,2).eq.0) then
          y(ii)=aa(ii,ii)
        else
          z(ii)=aa(ii,ii)
        endif
  200 continue
      do 300 ii=1,10
        t(ii)=y(ii)+z(ii)
        if(t(ii).eq.x(ii)) then
          write(6,*) '*** ok at ',ii,'***'
        else
          write(6,*) '*** ng at ',ii,'***'
        endif
  300 continue
      end
