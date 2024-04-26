
      program main
      logical a(3,3)/.true.,.true.,.true.,
     c               .false.,.false.,.false.,
     c               .true.,.false.,.true./
      integer n(3,3)/2,3,4,3,4,5,8,7,10/
      integer z(3,3)/0,0,0,6,8,10,0,14,0/,err/0/

      do i=1,3
         where(a(i,:))
           n(i,:)=n(i,:)-n(i,:)
         elsewhere
           n(i,:)=n(i,:)+n(i,:)
         endwhere
      end do

      do l=1,3
         do i=1,3
            if ( n(i,l).ne.z(i,l) ) then
               err=1
            endif
         enddo
      enddo
      if (err.eq.1)then
         write(6,*)'*** ng ?? ***'
      else
         write(6,*)'*** ok    ***'
      endif
      end
