      program rnrcp01
      character*11 cpsub
      write(6,*) cpsub('test')
      end
      function cpsub(c)
      character*(*) c,cpsub
      cpsub='ok '//c
      return
      end
