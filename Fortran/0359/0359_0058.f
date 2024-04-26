      call c8
      call c16
      end

      subroutine c8
      complex*8 bb(5)
      complex*8 com8a1_0101(5),com8a1_0102(5),aa(5),x/(10.,20.)/
      data com8a1_0101/(1,2),(3,4),(5,6),(7,8),(9,10)/
      data com8a1_0102/(11,12),(13,14),(15,16),(17,18),(19,20)/
      data aa/(1,2),(3,4),(5,6),(7,8),(9,10)/
      data bb/(1,2),(3,4),(5,6),(7,8),(9,10)/

      com8a1_0102=conjg(com8a1_0101)+aa
      write(6,*) com8a1_0102

      aa = 2.0+com8a1_0102
      com8a1_0102=(aa)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=real(conjg(aa))
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=real(aa)+(2.,3.)
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2+com8a1_0102
      com8a1_0102=conjg(aa)-x
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = (2.,3.)+com8a1_0102
      com8a1_0102=conjg(aa)-x
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = bb+com8a1_0102
      com8a1_0102=conjg(aa)-x
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=conjg(aa)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      com8a1_0102=conjg(com8a1_0101)+aa-3
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=aa-conjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      aa = com8a1_0101
      com8a1_0102=conjg(aa)-x
      write(6,*)  aa
      write(6,*) com8a1_0102

      do i=1,4
         aa(i) = aa(i)+com8a1_0102(i)
      enddo
      write(6,*)  aa

      do i=1,5
         aa(i) = 2.0-com8a1_0102(i)
         com8a1_0102(i)=real(aa(i))+(2.,3.)
      enddo
      write(6,*) com8a1_0102
      write(6,*)  aa

      do i=1,5
         aa(i) = 2.0-com8a1_0102(i)
        com8a1_0102(i)=real(aa(i))+3
      enddo
      write(6,*) com8a1_0102
      write(6,*)  aa


      end                                                               

      subroutine c16
      complex*16     bb(5)
      complex*16 com8a1_0101(5),com8a1_0102(5),aa(5),x/(10.,20.)/
      data com8a1_0101/(1,2),(3,4),(5,6),(7,8),(9,10)/
      data com8a1_0102/(11,12),(13,14),(15,16),(17,18),(19,20)/
      data aa/(1,2),(3,4),(5,6),(7,8),(9,10)/
      data bb/(1,2),(3,4),(5,6),(7,8),(9,10)/

      com8a1_0102=dconjg(com8a1_0101)+aa
      write(6,*) com8a1_0102

      aa = 2.0+com8a1_0102
      com8a1_0102=(aa)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=dreal(dconjg(aa))
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=dreal(aa)+(2.,3.)
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2+com8a1_0102
      com8a1_0102=dconjg(aa)-x
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = (2.,3.)+com8a1_0102
      com8a1_0102=conjg(aa)-x
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = bb+com8a1_0102
      com8a1_0102=conjg(aa)-x
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=dconjg(aa)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      com8a1_0102=dconjg(com8a1_0101)+aa-3
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      com8a1_0102=aa-dconjg(com8a1_0101)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102

      aa = com8a1_0101
      com8a1_0102=conjg(aa)-x
      write(6,*)  aa
      write(6,*) com8a1_0102

      do i=1,4
         aa(i) = aa(i)+com8a1_0102(i)
      enddo
      write(6,*)  aa

      do i=1,5
         aa(i) = 2.0-com8a1_0102(i)
         com8a1_0102(i)=real(aa(i))+(2.,3.)
      enddo
      write(6,*) com8a1_0102
      write(6,*)  aa

      do i=1,5
         aa(i) = 2.0-com8a1_0102(i)
        com8a1_0102(i)=real(aa(i))+3
      enddo
      write(6,*) com8a1_0102
      write(6,*)  aa


      end                                                               

