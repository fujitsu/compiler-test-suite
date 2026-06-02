      character*5 c,chx,ent
      c=chx('123')
      c=ent('456')
      print *,c
      end

      function chx(c)
      character*(*) chx,c,ent
      chx='abc'
      return
      entry ent(c)
      ent='def'
      end
