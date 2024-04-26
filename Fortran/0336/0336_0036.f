      real    real2(2,2)/4*0./
      real2=0.
      do 610 j=1,2
        do 600 i=1,2
          if (((j.gt.1).and.(j.lt.4)) .and.(i.gt.1)) then
            real2(i,j)=2.
          else
            real2(i,j)=3.
          endif
 600   continue
 610  continue
      write(6,*)"resl2=", real2
      stop
      end
