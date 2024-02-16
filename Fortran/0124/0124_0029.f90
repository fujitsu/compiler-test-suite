! 

      complex(kind=16)                      :: dim0
      complex(kind=16),dimension(1:10)      :: dim1
      complex(kind=16),dimension(1:10,1:10) :: dim2
      real(kind=16)                         :: ans
      
      dim0 = real(cos(0.0D0),kind=16)
      dim1 = dim0
      dim2 = dim0
      dim0 = dim0 * 2.0
      dim1 = dim1 * 2.0
      dim2 = dim2 * 2.0

      ans = dim0 + real(sum(dim1)) + real(sum(dim2))
      if (ans .eq. 222.0) then
        print *, "OK"
      else
        print *, "NG"
        print *, ans
      endif
      end
