
      logical            ,dimension(2,2):: mask
      complex    ,target ,dimension(2,2):: c0,c2
      complex    ,pointer,dimension(:,:):: c1
      complex    ,pointer,dimension(:,:):: c4
      integer*4 error/0/
      data mask/.true.,.false.,.true.,.false./
      data c0/(0.0,1.0),(1.0,2.0),(3.0,4.0),(5.0,6.0)/
      data c2/(0.0,0.0),(0.0,0.0),(0.0,0.0),(0.0,0.0)/

      allocate(c4(2,2))
      c4=(0.,0.)
      c1 => c0
      where (mask)
       c4=sin(c1)
      end where

      do i=1,2
        c2(1,i)=sin(c0(1,i))
      enddo
      
      do j=1,2
        do i=1,2
          if(c2(i,j) .ne. c4(i,j)) error=1
        enddo
      enddo
      if(error .eq. 0) then
        write(6,*) '*** ok    ***'
      else
        write(6,*) '*** ng ?? ***'
        write(6,*) 'true value :',c2
        write(6,*) 'calc value :',c4
      endif
      stop
      end 
