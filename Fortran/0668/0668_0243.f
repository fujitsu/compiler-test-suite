      program main
      character*1  chr/1hn/
      character*52 chr1,chr2,chr3,chr4,chr5,chr6,chr7
      real*4       ra(10),rb(10),rc(10),rd(10),re(10),rf(10),rg(10)
      data chr1/52haabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz/
      data ra/5,4,3,2,1,10,9,8,7,6/,
     +     rb/10,9,8,7,6,5,4,3,2,1/,rg/10*0/,rf/10*0/,n/10/
      do 1000 k=1,9
        goto (1010,1020,1030,1040,1050,1060,1070,1080,1090),k
 1010   do 100 i=1,52
          if(chr1(i:i).eq.chr) then
            chr2(i:i)=1h
          else
            chr2(i:i)=chr1(i:i)
          endif
  100   continue
        write(6,*) ' ************ chr2 **********'
        write(6,10) chr2
   10   format(1h ,a52,/)
        goto 1000
 1020   do 200 i=1,52
          if(chr1(i:i).ne.chr) then
            chr3(i:i)=1h
          else
            chr3(i:i)=chr1(i:i)
          endif
  200   continue
        write(6,*) ' ************ chr3 **********'
        write(6,10) chr3
        goto 1000
 1030   do 300 i=1,52
          if(chr1(i:i).gt.chr) then
            chr4(i:i)=1h
          else
            chr4(i:i)=chr1(i:i)
          endif
  300   continue
        write(6,*) ' ************ chr4 **********'
        write(6,10) chr4
        goto 1000
 1040   do 400 i=1,52
          if(chr1(i:i).lt.chr) then
            chr5(i:i)=1h
          else
            chr5(i:i)=chr1(i:i)
          endif
  400   continue
        write(6,*) ' ************ chr5 **********'
        write(6,10) chr5
        goto 1000
 1050   do 500 i=1,52
          if(chr1(i:i).ge.chr) then
            chr6(i:i)=1h
          else
            chr6(i:i)=chr1(i:i)
          endif
  500   continue
        write(6,*) ' ************ chr6 **********'
        write(6,10) chr6
        goto 1000
 1060   do 600 i=1,52
          if(chr1(i:i).le.chr) then
            chr7(i:i)=1h
          else
            chr7(i:i)=chr1(i:i)
          endif
  600   continue
        write(6,*) ' ************ chr7 **********'
        write(6,10) chr7
        goto 1000
 1090   do 900 i=1,10
          if(ra(i).gt.rb(i)) then
            re(i)=ra(i)-rb(i)
          else
            re(i)=rb(i)-ra(i)
          endif
  900   continue
        write(6,*) ' ************ re ************'
        write(6,20) re
        goto 1000
 1070   do 700 i=1,n
          assign 22 to label
          if (i.gt.5) assign 21 to label
          goto label(21,22)
   21     rc(i)=rb(i)+ra(i)
          goto 700
   22     rc(i)=rb(i)-ra(i)
  700   continue
        write(6,*) ' ************ rc ************'
        write(6,20) rc
   20   format(5f15.7,/)
        goto 1000
 1080   do 800 i=1,n
          goto (31,32,33,34,35),i
          rd(i)=ra(i)+rb(i)
          goto 800
   31     rd(i)=ra(i)-rb(i)
          goto 800
   32     rd(i)=ra(i)*rb(i)
          goto 800
   33     rd(i)=ra(i)/rb(i)
          goto 800
   34     rd(i)=-ra(i)-rb(i)
          goto 800
   35     rd(i)=-ra(i)+rb(i)
  800   continue
        write(6,*) ' ************ rd ************'
        write(6,20) rd
 1000 continue
      call arti(rf,ra,rb)
      write(6,*) ' ************ rf ************'
      write(6,20) rf
      do 1100 i=1,n
        if(rg(i).gt.15) then
          write(6,*) ' ************ rg ************'
          write(6,20) rf
          stop
        endif
        rg(i)=rf(i)+ra(i)+rb(i)
 1100 continue
      write(6,*) ' ************ rg ************'
      write(6,20) rg
      stop
      end
      subroutine arti(rf,ra,rb)
      real rf(10),ra(10),rb(10)
      do 100 i=1,10
        rf(i)=ra(i)+rb(i)
        if(rf(i).gt.15) then
          write(6,*) ' ************ rf ************'
          write(6,20) rf
          return
        endif
  100 continue
      write(6,*) ' ************ rf ************'
      write(6,20) rf
   20 format(5f15.7,/)
      return
      end
