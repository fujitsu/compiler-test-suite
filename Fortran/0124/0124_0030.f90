
      complex(kind=4)                       :: r4dim0
      complex(kind=4),dimension(1:10)       :: r4dim1
      complex(kind=4),dimension(1:10,1:10)  :: r4dim2
      complex(kind=8)                       :: r8dim0
      complex(kind=8),dimension(1:10)       :: r8dim1
      complex(kind=8),dimension(1:10,1:10)  :: r8dim2
      real(kind=16)                         :: ans, r1, r2, r3
      
      r4dim0 = real(cos(0.0D0),kind=4)
      r4dim1 = r4dim0
      r4dim2 = r4dim0
      r4dim0 = r4dim0 * 2.0D0
      r4dim1 = r4dim1 * 2.0D0
      r4dim2 = r4dim2 * 2.0D0
      r1     = r4dim0 + real(sum(r4dim1)) + real(sum(r4dim2))

      r4dim0 = real(cos(0.0D0),kind=4)
      r4dim1 = r4dim0
      r4dim2 = r4dim0
      r4dim0 = r4dim0 * real(2.0,kind=16)
      r4dim1 = r4dim1 * real(2.0,kind=16)
      r4dim2 = r4dim2 * real(2.0,kind=16)
      r2     = r4dim0 + real(sum(r4dim1)) + real(sum(r4dim2))

      r8dim0 = real(cos(0.0D0),kind=8)
      r8dim1 = r8dim0
      r8dim2 = r8dim0
      r8dim0 = r8dim0 * real(2.0,kind=16)
      r8dim1 = r8dim1 * real(2.0,kind=16)
      r8dim2 = r8dim2 * real(2.0,kind=16)
      r3     = r8dim0 + real(sum(r8dim1)) + real(sum(r8dim2))

      ans = r1 + r2 + r3
      if (ans .eq. 666.0) then
        print *, "OK"
      else
        print *, "NG"
        print *, ans
      endif
      end
