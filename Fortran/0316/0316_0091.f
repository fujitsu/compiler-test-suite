
      character*0    ,parameter:: ch0=''
      character*1    ,parameter:: ch1='a'
      character*10   ,parameter:: ch2='abcdefghij'
      character*32767,parameter:: ch3='xxxxxxxx'
      character cha*0,chb*0,chc*0,chd*1,che*32767,chf*30,chg*32767
      integer*1, parameter:: ia=0
      integer*2, parameter:: ib=1
      integer*4, parameter:: ic=3
      integer*8, parameter:: id=32767

      parameter(cha=repeat(STRING=ch0,NCOPIES=ia)) 
      parameter(chb=repeat(ch0,NCOPIES=ib)) 
      parameter(chc=repeat(ch1,ia)) 
      parameter(chd=repeat(ch1,ib)) 
      parameter(che=repeat(ch1,id)) 
      parameter(chf=repeat(ch2,ic)) 
      parameter(chg=repeat(ch3,ib)) 

      call checkch(cha,repeat(STRING=ch0,NCOPIES=ia)) 
      call checkch(chb,repeat(ch0,NCOPIES=ib)) 
      call checkch(chc,repeat(ch1,ia)) 
      call checkch(chd,repeat(ch1,ib)) 
      call checkch(che,repeat(ch1,id)) 
      call checkch(chf,repeat(ch2,ic)) 
      call checkch(chg,repeat(ch3,ib)) 

      print *,'*** ok ***'
      end

      subroutine checkch(ch,cht)
      character*(*) ch,cht
      if (ch.ne.cht) then
        print *,len(ch),len(cht)
        print *,'??? ng ???'
        stop 1
      endif
      end
