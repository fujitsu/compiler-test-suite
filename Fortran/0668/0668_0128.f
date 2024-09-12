      program main
      parameter (nn=100)
      real*8  r801(nn),r802(nn),r803(nn),r804(nn),r805(nn)
      real*8  r806(nn),r807(nn),r808(nn)
      integer i401(nn),i402(nn),i403(nn),i404(nn),i405(nn)
      integer i406(nn),i407(nn),i408(nn)
      integer list(nn)
      data i401,i402,i403,i404/400*1/
      data i405,i406,i407,i408/400*2/
      data r801,r802,r803,r804/400*3/
      data r805,r806,r807,r808/400*4/
      call init(i401,i402,i403,i404,i405,i406,i407,i408,list,100)
      do 10 i=1,100
        i408(i) = i401(i)+i402(i)+i403(i)+i
     +       + i407(i)+i408(i)
        if (mod(i408(i),5).eq.0) then
          i404(i) = i401(i) * i402(i) - i403(i) * i
          i401(i) = i404(i) / i405(i) + sin(real(i408(i))) + i408(i)
          if (i.le.50) then
            i401(i) = i402(i) / i403(i) + i408(i) / i404(i)
            i405(i) = i401(i)*i402(i)*mod(int(i408(i)),int(i404(i)))
          else
            i401(i) = i402(i) * iand(int(i403(i)),int(i403(i)))
            i405(i) = i404(i) - i408(i)
          endif
          i406(i) = i404(i) / i405(i) + i408(i) / cos(real(i401(i)))
      endif
   10 continue
   11 write(6,*) ' ## ## '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*) i406
      write(6,*)
      do 20 i=1,nn
        if (i.gt.nn) goto 21
        if (mod(i,2).eq.10) goto 21
        if (btest(i,31)) goto 21
          i401(i) = i402(i) + i
          r801(i) = r802(i) + sin(real(i))
          if (i.le.50) then
            i401(i) = i405(i) + i406(list(i))
            if (i.le.50) then
              r801(i) = cos(r803(i)) + r804(i)
              if (i.le.50) then
                i401(i) = i407(i) * i402(i) + i408(i)
                if (i.le.50) then
                  r801(i) = tan(r805(list(i))+r806(i)+i)
                  if (i.le.50) then
                    i401(i) = i402(i) + i403(i) + i405(i)
                  else
                    r801(i) = r807(i) - sin(r808(i))
                  endif
                else
                  i401(i) = i404(i) + i405(list(i)) * i407(i)
                endif
              else
                r801(i) = r808(i) * cos(r806(i))
              endif
            else
              i401(i) = i
            endif
          else
            r801(i) = sin(real(i)) + cos(real(list(i)))
          endif
          i401(i) = i - i402(i) + i408(i)
   20 continue
   21 continue
      write(6,*) ' ## test 2 ## '
      write(6,*) (i401(i),i=1,nn,2)
      write(6,*)
      write(6,1) (r801(i),i=1,nn,2)
      write(6,*)
      do 30 i=nn,1,-1
        if (r801(i).lt.0) then
          i401(i) = sin(r802(i)) + cos(r803(i))
          do 40 j=1,nn,1
            k = 1
            if (j.lt.100) then
              i402(k) = sin(r804(k)) - i403(k)
              k = k + 1
            else
              i404(j) = mod(r805(j),i) + tan(r806(k))
            endif
   40     continue
        else
          goto 30
        endif
        goto 31
   30 continue
   31 continue
      write(6,*) ' ## test 3 ## '
      write(6,*) (i401(i),i=1,nn,2)
      write(6,*)
      write(6,*) (i402(i),i=1,nn,2)
      write(6,*)
      write(6,*) (i404(i),i=1,nn,2)
    1 format(5e15.6)
      stop
      end
      subroutine init(i401,i402,i403,i404,i405,i406,i407,i408,list,n)
      integer i401(n),i402(n),i403(n),i404(n)
      integer i405(n),i406(n),i407(n),i408(n)
      integer list(n)
      do 100 i=1,n
        j = i + n
        if (n.ne.j) then
          i401(i) = i
          i402(i) = mod(i,2)+1
          i403(i) = mod(i402(i),i401(i)) + 2
          i404(i) = i402(i) + i403(i)
          i405(i) = i404(i) * i401(i)
          i406(i) = mod(i405(i),2) + 1
          i407(i) = i401(i) + i402(i)
          i408(i) = i401(i) + i402(i) * i403(i)
        endif
        list(i) = i
  100 continue
      return
      end
