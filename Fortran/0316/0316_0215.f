
      module mod9
      common /com9/a
      integer a(0:-1)
      end

      use mod9
      print *,'*** ok ***'
      end

      block data
      common /com9/a
      integer a(0:-1)
      end
