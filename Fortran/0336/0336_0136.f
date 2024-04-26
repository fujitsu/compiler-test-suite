
 8000 format(1h1,/,6x,9h*fortran*,5x,8hf7711009,5x,5henter )
  600 format(    /,1x,7hjustice  ,1x,8h+ item +,15x,19h+ computed result
     * +,19x,17h+ compare value +,20x,14h+ difference + )
  610 format(1h1)
      logical*1     l1p01,l1p02,l1x01,l1x02,l1m01(4)
      logical*4     l4p01,l4p02,l4p03,l4p04,
     *              l4x01,l4x02,l4x03,l4x04,l4m01(4)
      integer*2     i2x01
      parameter (l1p01 = .true., l1p02 = .false.,
     *           l4p01 = .true., l4p02 = .false.,
     *           l4p03 = .true., l4p04 = .false.)
      data          i4d01,i4d02/65536,123456/
      data          r4d01/100.0/
      r4x01 = 200.0
      l1x01 = .true.
      l1x02 = .false.
      l4x01 = .true.
      l4x02 = .false.
      l4x03 = .true.
      l4x04 = .false.
      l4m01(1) = .true.
      l4m01(2) = .false.
      l4m01(3) = .true.
      l4m01(4) = .false.
      l1m01(1) = .true.
      l1m01(2) = .false.
      l1m01(3) = .true.
      l1m01(4) = .false.
      item = 1
      write(6,8000)
      write(6,600)
   15 i4x15 = 0
      if (.true.)   then
        if (.not. .false.)   then
          do 250    while (i4x15 .le. 2000)
            do 249 i16=1,2
             do 248 i17=100,104,2
              do 247 i18=1,2
               do 246 i19=1,2
                do 245 i20=1,2
                 do 244 i21=1,2
                  do 243 i22=1,2
                   do 242 i23=1,2
                    do 241 i24=1,2
                     do 240 i25=1,2
                      do 239 i26=1,2
                       do 238 i27=1,2
                        do 237 i28=1,2
                         do 236 i29=1,2
                          do 235 i30=1,2
                           do 234 i31=1,2
                            do 233 i32=1,2
                             do 232 i33=1,2
                              do 231 i34=1,2
                               do 230 i35=1,2
                                do 229 i36=1,2
                                 do 228 i37=1,2
                                  do 227 i38=1,2
                                   do 226 i39=1,2
                                     i4x15 = i4x15 + 1
				     if (i4x15 .gt. 1000) goto 250
  226                              continue
  227                             continue
  228                            continue
  229                           continue
  230                          continue
  231                         continue
  232                        continue
  233                       continue
  234                      continue
  235                     continue
  236                    continue
  237                   continue
  238                  continue
  239                 continue
  240                continue
  241               continue
  242              continue
  243             continue
  244            continue
  245           continue
  246          continue
  247         continue
  248        continue
  249       continue
  250     i4x15 = i4x15 * 5
        else
        endif
      else
      endif
      icom = i4x15
      iexp = 5005
  100 idif = icom - iexp
      if (idif .ne. 0) then
      go to 9100
      endif
      go to 9110
 9100 write(6,'(/,3x,7h*error*,2x,2h( ,i2,2h ),22x,i11,25x,i11,
     *          23x,i11)')  item,icom,iexp,idif
      go to 9999
 9110 write(6,'(/,3x,7h* ok  *,2x,2h( ,i2,2h ),22x,i11,25x,i11)'
     *     )item,icom,iexp
      go to 9999
 9999 item = item + 1
      if (item.le.1) goto 15
      write(6,'(//,5x,9hfortran77,3x,10h*f7711009*,3x,4hexit)')
      stop
      end
      subroutine    sub1(iarg1)
      r4x11 = 100
      data     r4d11/200.0/
      if (r4x11 .lt. r4d11)   then
        do   204   i4=1,10
          iarg1 = iarg1 + 4
          if (iarg1 .ge. r4d11)   return
          iarg1 = iarg1 * iarg1
  204   continue
      endif
      return
      end
      subroutine    sub2(i4s14)
      logical*1   l1s01
      logical*4   l4ms1(4),l4s01
      i4s03 = 2147483647
      l4s01 = .true.
      l1s01 = .true.
      l4ms1(1) = .true.
      l4ms1(2) = .false.
      l4ms1(3) = .true.
      l4ms1(4) = .false.
      if (.not. l4ms1(2) .neqv. l4ms1(4))   then
        do   214   while (i4s14 .lt. i4s03)
          i4s14 = i4s14 + 14
          if (l4s01 .and. l1s01)   then
            i4s14 = i4s14 * 10
            do   224  i14=1,14
              if (i4s14*i14 .ge. 24680)   then
                i4s14 = i4s14 + 10000
                return
              endif
  224       i4s14 = i4s14 * i4s14
          endif
  214   continue
      endif
      return
      end
