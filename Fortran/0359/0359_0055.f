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
      write(6,*) com8a1_0102

      aa = 2+com8a1_0102

      com8a1_0102=3+(aa)-(4.,6.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=conjg(aa)
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = com8a1_0102
      com8a1_0102=real(aa)+2
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=conjg(aa)-2
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=conjg(aa)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      end                                                               

      subroutine c16
      complex*16 com8a1_0101(10),com8a1_0102(10),aa(10)
      j =1
      do i=1,10
         aa(i) = cmplx(j+30,j+40)
         com8a1_0101(i) = cmplx(j,j+1)
         com8a1_0102(i) = cmplx(j+22,j+23)
         j=j+2
      enddo

      com8a1_0102=dconjg(com8a1_0101)+aa
      write(6,*) com8a1_0102

      aa = 2+com8a1_0102

      com8a1_0102=3+(aa)-(4.,6.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=dconjg(aa)
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = com8a1_0102
      com8a1_0102=dreal(aa)+2
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=dconjg(aa)-2
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=dconjg(aa)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      end                                                               

