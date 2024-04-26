      integer s/0/
      call sub1(s)
      end

      subroutine sub1(s)
      integer a(10),mask(10),s
      data a/1,2,3,4,5,6,7,8,9,10/
      data mask/1,0,0,0,1,0,0,2,1,2/

      do 10 i=1,10
        if(mask(i).eq.0) then
          s=a(i)
        endif
        if(mask(i).eq.2) then
          s= -1
        endif
 10           continue
      write(6,*) s
      end
