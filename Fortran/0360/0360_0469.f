      integer   nx,ny,nz,nt,nsite,nlink
      integer   ix,iy,iz,it,mu
      parameter (nx=8,ny=8,nz=8,nt=8)

      complex*16 un(0:nx-1,0:ny-1,0:nz-1,0:nt-1,0:3,3,3)
      complex*16 ua(3,3)


      do mu=0,3
         do i1=1,3
            do i2=1,3
               ua(i1,i2) = 0
            enddo
         enddo

         do i1=1,3
            do i2=1,3
               ua(i1,i2) = ua(i1,i2)+1
            enddo
         enddo

         do i1=1,3
            do i2=1,3
               un(1,1,1,1,1,i1,i2) = 1
            enddo
         enddo
      enddo


      if (un(1,1,1,1,1,1,1) .ne. (1.0,0.0)) then
         write(6,*) ' NG '
      else
         write(6,*) ' OK '
      endif
      end
