      DIMENSION XS(:)
      REAL*4 XS
      ALLOCATABLE :: XS
      allocate(XS(2))
      XS=1
      if (any(XS/=1))write(6,*) "NG"
      print *,'pass'
      END
