!             CVCT6301            LEVEL=1        DATE=83.09.13
!  1. PROGRAM NAME  : CVCT6301
!  2. PURPOSE       : MASK FOR DO-BRANCH AND USER'S INDUCTION
!  3. RESULT        : ABEND
!  4. ENVIRONMENT   : VPLEVEL(4)
!  5. HISTORY       : 1983-09-13
!
PROGRAM CV6301
  type st1
     INTEGER   IG(10)/9*3,2/,MXC/3/,NA/10/,NA2/10/
  end type st1
  type(st1) :: str
  DO  L=1,10
     IF( str%IG(str%NA).NE.str%MXC) GO TO 180
     str%IG(str%NA)=0
170  str%NA=str%NA-1
  enddo
180 str%NA2=str%NA
  WRITE(6,*) ' *** CVCT6301 ***'
  WRITE(6,*) str%NA2
END PROGRAM CV6301
