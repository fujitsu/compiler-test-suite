      call c8
      call c16
      end

      subroutine c8
      complex*8 com8a1_0101(10),com8a1_0102(10),aa(10)

      j =1
      do i=1,10
         aa(i) = cmplx(j+30,j+40)
         com8a1_0101(i) = cmplx(j,j+1)
         com8a1_0102(i) = cmplx(j+22,j+23)
         j=j+2
      enddo

      com8a1_0102=conjg(com8a1_0101)+aa
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=conjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=conjg(com8a1_0101)+(2.,3.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=(0.,0.)-conjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=(2.,3.)-conjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      end                                                               


      subroutine c16
      complex*16 com8a1_0101(10),com8a1_0102(10),aa(10)

      j =1
      do i=1,10
         aa(i) = dcmplx(j+30,j+40)
         com8a1_0101(i) = dcmplx(j,j+1)
         com8a1_0102(i) = dcmplx(j+22,j+23)
         j=j+2
      enddo

      com8a1_0102=dconjg(com8a1_0101)+aa
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=dconjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=dconjg(com8a1_0101)+(2.,3.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=(0.,0.)-dconjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=(2.,3.)-dconjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      end                                                               

