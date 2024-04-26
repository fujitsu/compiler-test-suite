      call c8
      call c16
      end

      subroutine c8
      real      bb(5)
      complex*8 com8a1_0101(5),com8a1_0102(5),aa(5)
      data com8a1_0101/(1,2),(3,4),(5,6),(7,8),(9,10)/
      data com8a1_0102/(11,12),(13,14),(15,16),(17,18),(19,20)/
      data aa/(1,2),(3,4),(5,6),(7,8),(9,10)/

      aa = 2.0+com8a1_0102
      com8a1_0102=(aa)+(4.,6.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      com8a1_0102=2-(aa)+(4.,6.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=(aa)
      bb = aa+3
      write(6,*) com8a1_0102
      write(6,*)  aa
      write(6,*) bb
      end                                                               

      subroutine c16
      real*8      bb(5)
      complex*16 com8a1_0101(5),com8a1_0102(5),aa(5)
      data com8a1_0101/(1,2),(3,4),(5,6),(7,8),(9,10)/
      data com8a1_0102/(11,12),(13,14),(15,16),(17,18),(19,20)/
      data aa/(1,2),(3,4),(5,6),(7,8),(9,10)/

      aa = 2.0+com8a1_0102
      com8a1_0102=(aa)+(4.,6.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      com8a1_0102=2-(aa)+(4.,6.)
      write(6,*) com8a1_0101
      write(6,*) com8a1_0102
      write(6,*)  aa

      aa = 2.0+com8a1_0102
      com8a1_0102=(aa)
      bb = aa+3
      write(6,*) com8a1_0102
      write(6,*)  aa
      write(6,*) bb
      end                                                               

