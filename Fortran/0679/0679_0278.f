          data ix/5/,iy/1/,iz/2/
          do 32 i=1,2000
   32     ix=ix/iy/iz *iy*iz /iy/iz *iy*iz /iy*iy
          write(6,*) ix
          stop
          end
