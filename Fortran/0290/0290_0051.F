      call s1
      print *,'pointer test : pass'
      end
      subroutine s1

      integer*8  ip11,ip12,malloc,isize1,isize2

      parameter(isize1=2)
      parameter(isize2=4)
      common /x/ ip21,ip22
      ip11=malloc(isize1)
      ip12=malloc(isize2)
      call s11(ip11,ip12)
      end
      subroutine s11(ip1,ip2)
      pointer (ip1,c),(ip2,i)
      character*2 c,x
      do 4 j=1,2
         i=j+1
         write(c,'(i2)') i
         write(1,*) i , i+1
         write(11,'(a)') c
4     continue
      rewind 1
      c='xx'
      if (c.ne.'xx')print *,'fail'
      rewind 11
      do 5 j=1,2
         read (1,*) ii, jj
         read (11,'(a)') c
         if (ii.ne.j+1  )print *,'fail'
         if (jj.ne.j+2)print *,'fail'
         write (x,'(i2)') j+1
         if (x.ne.c) print *,'fail'
5     continue
      end

