      program main
      call sub1()   
      call sub2() 
      end

      subroutine sub1()
      integer s
     
      s=0
      do i=1,5
         s=s+1
         exit
      enddo
      call msgout(11,1,s)

      s=0
      do i=1,5
      do j=1,5
         s=s+1
         exit
      enddo
      enddo
      call msgout(12,5,s)

      s=0
      do i=1,5
      do j=1,5
      do k=1,5
         s=s+1
         exit
      enddo
      enddo
      enddo 
      call msgout(13,25,s)

          s=0
          do i=1,5
      m1: do j=1,5
          do k=1,5
             s=s+1
             exit m1
          enddo
          enddo m1
          enddo 
          call msgout(14,5,s)

          s=0
      m2: do i=1,5
          do j=1,5
          do k=1,5
             s=s+1
             exit m2
          enddo
          enddo
          enddo m2
          call msgout(15,1,s)

          s=0
      m3: do i=1,5
          do j=1,5
          do k=1,5
             s=s+1
          enddo
          enddo
          exit m3
          enddo m3
          call msgout(16,25,s)

      return
      end

      subroutine sub2()
      integer s
     
      s=0
      do i=1,5
         s=s+1
         cycle
      enddo
      call msgout(21,5,s)

      s=0
      do i=1,5
      do j=1,5
         s=s+1
         cycle
      enddo
      enddo
      call msgout(22,25,s)

      s=0
      do i=1,5
      do j=1,5
      do k=1,5
         s=s+1
         cycle
      enddo
      enddo
      enddo 
      call msgout(23,125,s)

          s=0
          do i=1,5
      m1: do j=1,5
          do k=1,5
             s=s+1
             cycle m1
          enddo
          enddo m1
          enddo 
          call msgout(24,25,s)

          s=0
      m2: do i=1,5
          do j=1,5
          do k=1,5
             s=s+1
             cycle m2
          enddo
          enddo
          enddo m2
          call msgout(25,5,s)

          s=0
      m3: do i=1,5
          do j=1,5
          do k=1,5
             s=s+1
          enddo
          enddo
          cycle m3
          enddo m3
          call msgout(26,125,s)

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
