      INTEGER       :: ICOUNT=0
      INTEGER        :: ISIZE
      CHARACTER (4) :: BUFF
      OPEN(11,file='90126.dat_temp')
      write(11,'(a)')'chris'
      write(11,'(a)')'julia'
      close(11)
100   ICOUNT = ICOUNT + 1
      BUFF   = 'Junk Junk Junk'
      IF(ICOUNT.EQ.1)THEN
        write(26,'(/1x,a)')'Opening with pad="YES"'
        OPEN(11,file='90126.dat_temp',status='OLD')
      ELSE
        write(26,'(/1x,a)')'Opening with pad="NO"'
        OPEN(11,file='90126.dat_temp',status='OLD',pad='NO')
      ENDIF
200   READ(11,'(A)',size=ISIZE,advance='NO',eor=300,end=400) BUFF
      write(27,900)'No-EOR: isize=',isize,': buff=',buff
      GO TO 200
300   write(27,900)'   EOR: isize=',isize,': buff=',buff
      GO TO 200
400   continue
      IF(ICOUNT.EQ.2)THEN
        call xhk
         CLOSE(11,status='delete')
         print *,'pass'
      ELSE
         CLOSE(11)
        GO TO 100
      ENDIF
900   FORMAT(1X,A,I2,A,A)
      END
      subroutine xhk
      character*30 r
      rewind 27
read(27,'(a)')r;if (index(r,"No-EOR: isize= 4: buff=chri")==0)write(6,*) "NG"
read(27,'(a)')r;if (index(r,"EOR: isize= 1: buff=s   ")==0)write(6,*) "NG"
read(27,'(a)')r;if (index(r,"No-EOR: isize= 4: buff=juli")==0)write(6,*) "NG"
read(27,'(a)')r;if (index(r,"EOR: isize= 1: buff=a   ")==0)write(6,*) "NG"
read(27,'(a)')r;if (index(r,"No-EOR: isize= 4: buff=chri")==0)write(6,*) "NG"
read(27,'(a)')r;if (index(r,"EOR: isize= 0: buff=chri")==0)write(6,*) "NG"
read(27,'(a)')r;if (index(r,"No-EOR: isize= 4: buff=juli")==0)write(6,*) "NG"
read(27,'(a)')r;if (index(r,"EOR: isize= 0: buff=juli")==0)write(6,*) "NG"
end
