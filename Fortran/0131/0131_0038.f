
      integer*4 a, b1, b2, b3, b4
      parameter ( a=0 )

      b1 = ibset(a,  0)
      b2 = ibset(a,  2)
      b3 = ibset(a, 16)
      b4 = ibset(a, 18)

      print *, 'b1 =', b1
      print *, 'b2 =', b2
      print *, 'b3 =', b3
      print *, 'b4 =', b4
      if ( (b1 .eq. 2**0)  .and. (b2 .eq. 2**2)  .and.
     .     (b3 .eq. 2**16) .and. (b4 .eq. 2**18) ) then
         print *, '*** ok !! ***'
      else
         print *, '*** ng ?? ***'
      endif

      stop
      end
