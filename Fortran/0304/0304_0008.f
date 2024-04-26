      implicit none
      integer(4) :: natom, nstep
      integer(4) :: i, j, t
      real(8) :: dx, dy, dz
      real(8) :: posi1, posi2, posi3

      real(8),allocatable :: pos(:,:)
      real(8),allocatable :: fce(:,:)

      natom=10
      nstep=200

      allocate(pos(3,natom))
      allocate(fce(3,natom))

      do t=1,nstep
        do i=1,natom
          pos(1,i)=1.0
          pos(2,i)=2.0
          pos(3,i)=3.0
          fce(1,i)=0.d0
          fce(2,i)=0.d0
          fce(3,i)=0.d0
        enddo

        do i=1,natom
          posi1=pos(1,i)
          posi2=pos(2,i)
          posi3=pos(3,i)

          do j=i+1,natom
            dx=pos(1,j)-posi1
            dy=pos(2,j)-posi2
            dz=pos(3,j)-posi3
            fce(1,i)=fce(1,i)+dx
            fce(2,i)=fce(2,i)+dy
            fce(3,i)=fce(3,i)+dz
            fce(1,j)=fce(1,j)-dx
            fce(2,j)=fce(2,j)-dy
            fce(3,j)=fce(3,j)-dz
          enddo

        enddo

      enddo

      print*, int(fce(1,1))

      stop
      end
