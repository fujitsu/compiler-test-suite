      call test01()
      call test02()
      print *,'pass'
      end 
#define DDDAAA XXXX
#define VVVCCC YY
      subroutine test01()
      integer :: DDDAAA,VVVCCC
      parameter   
     1(DDD
     1A
     1A
     1A=1)
      data VVVCCC  /DDDAAA*DDDAAA/
      if (VVVCCC.ne.1) print *,'fail'
      end

      subroutine test02()
      integer :: DDDAAA,VVVCCC
C23456789012345678901234567890123456789012345678901234567890123456789012
C       10        20        30        40        50        60        7072
      parameter   
     1(                                                               DDD
     1A
     1A
     1A=1                                                          ,y=1)
      data VVVCCC  /DDDAAA*DDDAAA/
      if (VVVCCC.ne.1) print *,'fail'
      end
      subroutine test03()
      integer :: DDDAAA,VVVCCC
C23456789012345678901234567890123456789012345678901234567890123456789012
C       10        20        30        40        50        60        7072
      parameter
     1(                                                               DDD
     1A
     1A
     1A=1                                                          ,y=1)
      data VVVCCC  /1*1/
      if (VVVCCC.ne.1) print *,'fail'
      end
