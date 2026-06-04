      integer aux,mask
      data mask /Z'4e4e4e4e'/
      aux =      z'4fffffff'
      if (iand (aux,mask) .eq. mask) then
          print *,'OK'
      else
          print *,'NG'
      endif
      end
