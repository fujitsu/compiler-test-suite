      program main
      data n/10/
      logical*4  l41(10),l42(10),l43(10),l44(10),l45(10),lv40
      integer*4  i41(10),i42(10),i43(10),i44(10),i45(10),
     1           i46(10),i47(10),i48(10),i49(10),i50(10),i51(10)
      data i41,i42,i43,i45,i46,i47,i48,i49,i50,i51/100*0/
      data iv41/3/,i44/1,2,3,3,2,1,1,2,3,4/,iv43/3/,iv40/1/
      data l41/.true.,.false.,.true.,.false.,.true.,
     1         .false.,.true.,.false.,.true.,.true./,lv40/.false./
      data l42,l43,l44,l45/40*.true./

      do 30 i=1,n
        if ( l41(i) ) then
          i41(i) = 1
          lv40   = i41(i)
          i42(i) = iv41
          i43(i) = i44(i)
          i45(i) = i
          i46(i) = 2 + i42(i)
          i47(i) = i43(i) + 3
          i48(i) = i44(i) * i45(i)
          l42(i) = iv43   .eq. i47(i)
          i49(i) = l42(i)
          l43(i) = i45(i) .gt. merge(1,0,l42(i))
          i49(i) = l42(i) .or. l43(i)
          i50(i) = merge(1,0,l42(i)) .le. iv40
          l44(i) = merge(1,0,l43(i)) .eq. i45(i)
          i51(i) = i46(i) - merge(1,0,l44(i))
          l45(i) = l43(i) .and. lv40
        endif
  30  continue
      write(6,*) i41
      write(6,*) i42
      write(6,*) i43
      write(6,*) i45
      write(6,*) i46
      write(6,*) i47
      write(6,*) i48
      write(6,*) l42
      write(6,*) i49
      write(6,*) l43
      write(6,*) i49
      write(6,*) i50
      write(6,*) l44
      write(6,*) i51
      write(6,*) l45
      stop
      end
