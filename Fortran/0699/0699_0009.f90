      call sub0()
      call sub1()
      call sub2()
      call sub3()
      call sub4()
      call sub5()
      call sub6()
      call sub7()
      call sub8()
      call sub9()
      call sub10()
      call sub11()
      call sub12()
      call sub13()
      call sub14()
      call sub15()
      call sub16()
      call sub17()
      call sub18()
      call sub19()
      call sub20()
      call sub21()
      call sub22()
      call sub23()
      call sub24()
      print *,'pass'
      end
      subroutine sub0()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,14),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,14)
      L=INT(ISHFT(I,14),4)
      K=ISHFT(I,14)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub1()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,13),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,13)
      L=INT(ISHFT(I,13),4)
      K=ISHFT(I,13)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub2()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,3),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,3)
      L=INT(ISHFT(I,3),4)
      K=ISHFT(I,3)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub3()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,0),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,0)
      L=INT(ISHFT(I,0),4)
      K=ISHFT(I,0)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub4()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-10),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-10)
      L=INT(ISHFT(I,-10),4)
      K=ISHFT(I,-10)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub5()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-16),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-16)
      L=INT(ISHFT(I,-16),4)
      K=ISHFT(I,-16)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub6()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=-3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,14),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,14)
      L=INT(ISHFT(I,14),4)
      K=ISHFT(I,14)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub7()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=-3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,13),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,13)
      L=INT(ISHFT(I,13),4)
      K=ISHFT(I,13)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub8()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=-3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,3),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,3)
      L=INT(ISHFT(I,3),4)
      K=ISHFT(I,3)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub9()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=-3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,0),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,0)
      L=INT(ISHFT(I,0),4)
      K=ISHFT(I,0)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub10()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=-3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-10),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-10)
      L=INT(ISHFT(I,-10),4)
      K=ISHFT(I,-10)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub11()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=-3
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-16),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-16)
      L=INT(ISHFT(I,-16),4)
      K=ISHFT(I,-16)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub12()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00008000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-16),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-16)
      L=INT(ISHFT(I,-16),4)
      K=ISHFT(I,-16)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub13()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'FFFF8000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-16),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-16)
      L=INT(ISHFT(I,-16),4)
      K=ISHFT(I,-16)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub14()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00008000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-1),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-1)
      L=INT(ISHFT(I,-1),4)
      K=ISHFT(I,-1)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub15()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'FFFF8000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-1),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-1)
      L=INT(ISHFT(I,-1),4)
      K=ISHFT(I,-1)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub16()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00008000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,1),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,1)
      L=INT(ISHFT(I,1),4)
      K=ISHFT(I,1)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub17()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'FFFF8000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,1),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,1)
      L=INT(ISHFT(I,1),4)
      K=ISHFT(I,1)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub18()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00008000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,14),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,14)
      L=INT(ISHFT(I,14),4)
      K=ISHFT(I,14)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub19()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'FFFF8000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,14),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,14)
      L=INT(ISHFT(I,14),4)
      K=ISHFT(I,14)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub20()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'FFFF8000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,0),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,0)
      L=INT(ISHFT(I,0),4)
      K=ISHFT(I,0)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub21()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00008000'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,0),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,0)
      L=INT(ISHFT(I,0),4)
      K=ISHFT(I,0)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub22()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00000700'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,0),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,0)
      L=INT(ISHFT(I,0),4)
      K=ISHFT(I,0)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub23()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00000700'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,1),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,1)
      L=INT(ISHFT(I,1),4)
      K=ISHFT(I,1)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,L,R,RR
          print *,'fail'
      end if
      end
      subroutine sub24()
      INTEGER*4 L,K

      iNTEGER*2,PARAMETER :: I=z'00000700'
      INTEGER*4,PARAMETER :: R=INT(ISHFT(I,-1),4)
      INTEGER*4,PARAMETER :: RR=ISHFT(I,-1)
      L=INT(ISHFT(I,-1),4)
      K=ISHFT(I,-1)

      if (L.ne.R.or.L.ne.RR) then 
          print *,L,R,RR
          print *,'fail'
      end if
      if (K.ne.R.or.K.ne.RR) then
          print *,K,R,RR
          print *,'fail'
      end if
      end
