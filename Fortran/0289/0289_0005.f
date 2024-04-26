      program main
      call sub1(5)   
      call sub2( ) 
      end

      subroutine sub1(n)
      integer s
     
      s=0
      do i=1,n
         s=s+1
         goto 100
 100     exit
      enddo
      call msgout(11,1,s)

      s=0
      do i=1,n
      do j=1,n
         s=s+1
         goto 200
         cycle
      enddo
 200  continue
      enddo
      call msgout(12,5,s)

      s=0
      do i=1,n
      do j=1,n
      do k=1,n
         s=s+1
         cycle
         goto 300
      enddo
 300  continue
      enddo
      enddo 
      call msgout(13,125,s)

          s=0
          do i=1,n
      m1: do j=1,n
          do k=1,n
             s=s+1
             goto 400
             exit  
          enddo
          enddo m1
 400      continue
          enddo 
          call msgout(14,5,s)

          s=0
      m2: do i=1,n
          do j=1,n
          do k=1,n
             s=s+1
             goto 500
             goto 500
          enddo
          enddo
          enddo m2
 500      call msgout(15,1,s)

          s=0
      m3: do i=1,n
          do j=1,n
          do k=1,n
             s=s+1
          enddo
          enddo
          goto 600
          cycle 
          enddo m3
 600      continue
          call msgout(16,25,s)

      return
      end

      subroutine sub2()
      integer s
     
      s=0
      do i=1,5
         s=s+1
         go to 100
         cycle
  100 continue     
      enddo
      call msgout(21,5,s)

      s=0
      do i=1,5
      do j=1,5
         exit
         s=s+1
         cycle
      enddo
      enddo
      call msgout(22,0,s)

      s=0
      do i=1,5
      do j=1,5
      do k=1,5
         cycle
         s=s+1
         cycle
      enddo
      enddo
      enddo 
      call msgout(23,0,s)

          s=0
          do i=1,5
      m1: do j=1,5
          do k=1,5
             goto 200 
             s=s+1
 200      continue
          cycle m1
          enddo
          enddo m1
          enddo 
          call msgout(24,0,s)

          s=0
      m2: do i=1,5
          do j=1,5
          do k=1,5
             cycle m2
          enddo
          enddo
          enddo m2
          call msgout(25,0,s)

          s=0
      m3: do i=1,5
          do j=1,5
          do k=1,5
             cycle m3
          enddo
          enddo
          cycle m3
          enddo m3
          call msgout(26,0,s)

      return
      end

      subroutine msgout(icase,ians,ires)
      if(ians.eq.ires) then
        print *, '*** case#',icase,' ok ***  ', ians,ires
      else
        print *, '*** case#',icase,' ng ***  ', ians,ires
      endif
      return
      end
