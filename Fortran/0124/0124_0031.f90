
      complex(kind=4)                       :: c8dim01,c8dim02
      complex(kind=4),dimension(1:10)       :: c8dim1
      complex(kind=4),dimension(1:10,1:10)  :: c8dim2
      complex(kind=8)                       :: c16dim0
      complex(kind=8),dimension(1:10)       :: c16dim1
      complex(kind=8),dimension(1:10,1:10)  :: c16dim2
      complex(kind=16)                      :: c32dim0
      complex(kind=16),dimension(1:10)      :: c32dim1
      complex(kind=16),dimension(1:10,1:10) :: c32dim2
      real(kind=16)                         :: ans
      
      c8dim01= real(cos(0.0D0),kind=4)
      c8dim02= c8dim01 + real(cos(0.0D0),kind=4)
      c8dim1 = c8dim01 * 2.0D0
      c8dim2 = c8dim02 * 2.0D0
      c8dim1 = c8dim02 * 2.0
      c8dim2 = c8dim02 * 2.0
      c16dim0 = c8dim01     * 2.0
      c16dim1 = sum(c8dim1) * 2.0
      c16dim2 = sum(c8dim2) * 2.0
      c32dim0 = c16dim0      * 2.0
      c32dim1 = sum(c16dim1) * 2.0
      c32dim2 = sum(c16dim2) * 2.0

      ans = real(sum(c32dim2))
      if (ans .eq. 16000000.0) then
        print *, "OK"
      else
        print *, "NG"
        print *, ans
      endif
      end
