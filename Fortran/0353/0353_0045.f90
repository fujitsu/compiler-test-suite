      common/com/rr,aa,bb
      real(kind=8) :: rr
      complex(kind=8) :: aa,bb
      print *, rr
      print *, aa
      print *, bb
      end

      block data
      common/com/rr,aa,bb
      real(kind=8) :: rr
      complex(kind=8) :: aa,bb
      data rr /10.0/
      data aa%im /1.0/
      data aa%re,bb%im /5.0,3.0/
      end block data
