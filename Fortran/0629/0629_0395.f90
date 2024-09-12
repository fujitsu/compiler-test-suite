      integer ::v(3)=(/1,1,1/)
      integer ,dimension(3,3)::a1,a2,a3
      data a1/9*0/
      data a2/1,2,3,4,5,6,7,8,9/
      data a3/110,120,130,140,150,160,170,180,190/

      where (reshape((/v,v,v/),(/3,3/))/=-1)
       	a1 = a2 + a3(1,1)
      end where	
      write(6,*) a1
      end
