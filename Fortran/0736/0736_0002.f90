      subroutine bc
      common /nblock/nblock
      common /jmax/jmax
      dimension q(10,65,33,4)

      do 21 n = nblock, nblock
      do 21 k = 1, 65
      do 21 l = 1, 33
        q(jmax,k,l,n) = q(10,k,l,n)
   21 continue
      return
      end
      print *,'pass'
      end
