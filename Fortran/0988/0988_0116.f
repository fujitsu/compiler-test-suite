      subroutine sub()
      common /cOm/a,b
      print *,b
      end
      block data block1
      common /cOm/a
      data a/2.0/
      end
      end
