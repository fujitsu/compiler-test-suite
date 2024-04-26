      integer*1 i1a(10,10),i1b(10,10),i1c(10,10)
      integer*2 i2a(10,10),i2b(10,10),i2c(10,10)
      integer*4 i4a(10,10),i4b(10,10),i4c(10,10)
      integer*8 i8a(10,10),i8b(10,10),i8c(10,10)
      real*4    r4a(10,10),r4b(10,10),r4c(10,10)
      real*8    r8a(10,10),r8b(10,10),r8c(10,10)
      real*16   r16a(10,10),r16b(10,10),r16c(10,10)
      data i1a/100*2/,i1b/100*3/,i1c/100*4/
      data i2a/100*2/,i2b/100*3/,i2c/100*4/
      data i4a/100*2/,i4b/100*3/,i4c/100*4/
      data i8a/100*2/,i8b/100*3/,i8c/100*4/
      data r4a/100*2/,r4b/100*3/,r4c/100*4/
      data r8a/100*2/,r8b/100*3/,r8c/100*4/
      data r16a/100*2/,r16b/100*3/,r16c/100*4/

      do j=1,10
        do k=1,10
          do i=1,10
            i1c(i,j)=i1c(i,j)+i1a(i,k)*i1b(k,j)
          enddo
        enddo
      enddo
      print *,'## i*1 ## ',i1c(1,1)

      do j=1,10
        do k=1,10
          do i=1,10
            i2c(i,j)=i2c(i,j)+i2a(i,k)*i2b(k,j)
          enddo
        enddo
      enddo
      print *,'## i*2 ## ',i2c(1,1)

      do j=1,10
        do k=1,10
          do i=1,10
            i4c(i,j)=i4c(i,j)+i4a(i,k)*i4b(k,j)
          enddo
        enddo
      enddo
      print *,'## i*4 ## ',i4c(1,1)

      do j=1,10
        do k=1,10
          do i=1,10
            i8c(i,j)=i8c(i,j)+i8a(i,k)*i8b(k,j)
          enddo
        enddo
      enddo
      print *,'## i*8 ## ',i8c(1,1)

      do j=1,10
        do k=1,10
          do i=1,10
            r4c(i,j)=r4c(i,j)+r4a(i,k)*r4b(k,j)
          enddo
        enddo
      enddo
      print *,'## r*4 ## ',r4c

      do j=1,10
        do k=1,10
          do i=1,10
            r8c(i,j)=r8c(i,j)+r8a(i,k)*r8b(k,j)
          enddo
        enddo
      enddo
      print *,'## r*8 ## ',r8c

      do j=1,10
        do k=1,10
          do i=1,10
            r16c(i,j)=r16c(i,j)+r16a(i,k)*r16b(k,j)
          enddo
        enddo
      enddo
      print *,'## r*16 ## ',r16c(1,1)

      end

