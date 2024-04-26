      program main
      integer*4    idim1(1000)
      integer*4    idim2(1000)
      real*4       rdim1(1000)
      real*4       rdim2(1000)
      do i=1,1000
        idim1(i) = mod(i,256)
      enddo
      do i=1000,1,-1
        idim2(i) = mod(i,256)
      enddo
      do i=2,1000*2,2
        rdim1(i/2) = mod(i/2,256)
      enddo
      do i=1000*2,2,-2
        rdim2(i/2) = mod(i/2,256)
      enddo
      call sub(idim1,idim2,rdim1,rdim2)
      write(6,*) ' ***** ok ***** '
      end
      subroutine sub(idim1,idim2,rdim1,rdim2)
      integer*4    idim1(1000)
      integer*4    idim2(1000)
      real*4       rdim1(1000)
      real*4       rdim2(1000)
      logical      ldim1(1000)
      logical      ldim2(1000)
      do i=1,1000
        if( idim1(i).eq.idim2(i) ) then
          ldim1(i) = idim1(i) .eq. idim2(i)
          if( rdim1(i).eq.rdim2(i) ) then
            ldim2(i) = rdim1(i) .eq. rdim2(i)
          else
            write(6,*) ' ng '
            stop
          endif
        else
          write(6,*) ' ng '
          stop
        endif
      enddo
      do i=1,1000
        ldim1(i) = ldim1(i) .eqv. ldim2(i)
      enddo
      do i=1,1000
        if( .not.ldim1(i) ) write(6,*) ' ***** ng *****  '
      enddo
      return
      end
