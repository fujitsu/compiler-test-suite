      program main
      integer  i4a(10),i4b(10),i4c(10),i4d(10),i4e(10)
      data     i4a/5,1,6,2,7,3,8,4,9,0/
      data     i4b/10*0/
      data     i4c/10*10/
      data     i4d/10*10/
      data     i4e/8,6,9,5,7,2,1,3,4,10/
      integer  i4a2(10),i4b2(10),i4c2(10),i4d2(10),i4e2(10),i4f2
      data     i4a2/5,1,5,10,6,5,10,4,7,2/
      data     i4b2/10*0/
      data     i4c2/10*20/
      data     i4d2/10*20/
      data     i4e2/10,9,8,7,6,5,4,3,2,1/
      data     i4f2/0/
      integer  i4a3(10),i4b3(10),i4c3(10),i4d3(10),i4e3(10),i4f3
      data     i4a3/5,1,5,2,5,6,5,9,5,7/
      data     i4b3/10*0/
      data     i4c3/10*10/
      data     i4d3/10*10/
      data     i4e3/8,6,9,5,7,2,1,3,4,10/
      data     i4f3/0/
      do 10 i=1,10
        i4b(i) = i4a(i)
        if (i4b(i) .gt. 4) then
          i4b(i) = i4b(i) * 5
          i4c(i) = i4b(i) / 5
          i4d(i4e(i)) = i4c(i) * 10
        endif
   10 continue
      write(6,*) ' ##   no.1 ##'
      write(6,*) ' i4b '
      write(6,100) i4b
  100 format (10i5)
      write(6,*) ' i4c '
      write(6,200) i4c
  200 format (10i5)
      write(6,*) ' i4d '
      write(6,300) i4d
  300 format (10i5)
      do 20 i=1,10
        i4b2(i) = i4a2(i)
        if ((i4b2(i) .eq. 5 ) .or. (i4b2(i) .eq. 10 )) then
          i4b2(i) = i4b2(i) * 5
          i4c2(i) = i4b2(i) / 5
          i4d2(i4e2(i)) = i4c2(i) * 20
          i4f2 = i4f2 + i4d2(i4e2(i))
        endif
   20 continue
      write(6,*) ' ##   no.2 ##'
      write(6,*) ' i4b2 '
      write(6,120) i4b2
  120 format (10i5)
      write(6,*) ' i4c2 '
      write(6,220) i4c2
  220 format (10i5)
      write(6,*) ' i4d2 '
      write(6,320) i4d2
  320 format (10i5)
      write(6,*) ' i4f2 '
      write(6,420) i4f2
  420 format (i5)
      do 30 i=1,10
        i4b3(i) = i4a3(i)
        if (i4b3(i) .eq. 5) then
          i4b3(i) = i4b3(i) * 5
          i4c3(i) = i4b3(i) / 5
          i4d3(i4e3(i)) = i4c3(i) * 10
          if (i4d3(i4e3(i)) .gt. 10) then
            i4f3 = i4f3 + i4c3(i)
          endif
        endif
   30 continue
      write(6,*) ' ##   no.3 ##'
      write(6,*) ' i4b3 '
      write(6,130) i4b3
  130 format (10i5)
      write(6,*) ' i4c3 '
      write(6,230) i4c3
  230 format (10i5)
      write(6,*) ' i4d3 '
      write(6,330) i4d3
  330 format (10i5)
      write(6,*) ' i4f3'
      write(6,430) i4f3
  430 format (i5)
      stop
      end
