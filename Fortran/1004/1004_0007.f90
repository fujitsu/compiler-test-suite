 call sub1()
 call sub2()
 call sub3()
 call sub11()
 call sub12()
 call sub13()
 call sub21()
 call sub22()
 call sub23()
 call sub31()
 call sub32()
 call sub33()
 print *,"pass"
 end
 subroutine sub1()
 real(16),parameter::r161=1.1897314953572317650857593266280070q+4932
 complex :: c=(r161,0.e0)
 complex*16 :: cc=(0.d0,r161)
 complex*32 :: ccc=(r161,0.q0)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub2()
 real(16),parameter::r161=1.1897314953572317650857593266280070q+4932
 complex :: c=(0.e0,r161)
 complex*16 :: cc=(r161,0.d0)
 complex*32 :: ccc=(0.q0,r161)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub3()
 real(16),parameter::r161=1.1897314953572317650857593266280070q+4932
 complex :: c=(r161,r161)
 complex*16 :: cc=(r161,r161)
 complex*32 :: ccc=(r161,r161)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub11()
 real(16),parameter::r162=-1.1897314953572317650857593266280070q+4932
 complex :: c=(r162,0.e0)
 complex*16 :: cc=(0.d0,r162)
 complex*32 :: ccc=(r162,0.q0)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub12()
 real(16),parameter::r162=-1.1897314953572317650857593266280070q+4932
 complex :: c=(0.e0,r162)
 complex*16 :: cc=(r162,0.d0)
 complex*32 :: ccc=(0.q0,r162)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub13()
 real(16),parameter::r16=-1.1897314953572317650857593266280070q+4932
 complex :: c=(r16,r16)
 complex*16 :: cc=(r16,r16)
 complex*32 :: ccc=(r16,r16)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub21()
 real(16),parameter::r16=3.3621031431120935062626778173217526q-4932
 complex :: c=(0.e0,r16)
 complex*16 :: cc=(0.q0,r16)
 complex*32 :: ccc=(0.q0,r16)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub22()
 real(16),parameter::r16=3.3621031431120935062626778173217526q-4932
 complex :: c=(r16,0.e0)
 complex*16 :: cc=(r16,0.q0)
 complex*32 :: ccc=(r16,0.q0)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub23()
 real(16),parameter::r16=3.3621031431120935062626778173217526q-4932
 complex :: c=(r16,r16)
 complex*16 :: cc=(r16,r16)
 complex*32 :: ccc=(r16,r16)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub31()
 real(16),parameter::r16=-3.3621031431120935062626778173217526q-4932
 complex :: c=(0.e0,r16)
 complex*16 :: cc=(0.q0,r16)
 complex*32 :: ccc=(0.q0,r16)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub32()
 real(16),parameter::r16=-3.3621031431120935062626778173217526q-4932
 complex :: c=(r16,0.e0)
 complex*16 :: cc=(r16,0.q0)
 complex*32 :: ccc=(r16,0.q0)
 print *,c
 print *,cc
 print *,ccc
 end
 subroutine sub33()
 real(16),parameter::r16=-3.3621031431120935062626778173217526q-4932
 complex :: c=(r16,r16)
 complex*16 :: cc=(r16,r16)
 complex*32 :: ccc=(r16,r16)
 print *,c
 print *,cc
 print *,ccc
 end
