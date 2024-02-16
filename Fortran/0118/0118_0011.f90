      logical a(10)/5*.false.,5*.true./
      logical res1/.false./
      logical res2/.false./
      logical res3/.false./
      logical res4/.false./

      res1 = any(a)
      res2 = all(a)

      do i=1,10
        res3 = res3 .or. a(i)
      enddo

      do i=1,10
        res4 = res4 .and. a(i)
      enddo

      print*, "OK"
      end
 
