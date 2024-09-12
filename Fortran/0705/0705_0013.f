      call s1
      print *,'pass'
      end
      subroutine s1
         real*8 a1(22),a2(22),a3(22),a4(22)
         real*8 p,pp(2)
         pointer (ip,p),(jp,pp)
         structure /st1/
           real*8 ppp
         end structure
         record /st1/ x
         structure /st2/
           real*8 pppp(2)
         end structure
         record /st2/ y
         pointer (kp,x),(mp,y)
         ip=loc(a1)
         do j=1,20
           p=real(j)
#ifdef NO_KERNEL_EMULATION_ALIGN
           ip=ip+8
#else
           ip=ip+4
#endif
         end do
         jp=loc(a2)
         do j=1,20
           pp(1)=real(j)
#ifdef NO_KERNEL_EMULATION_ALIGN
           jp=jp+8
#else
           jp=jp+4
#endif
         end do
         kp=loc(a3)
         do j=1,20
           x.ppp=real(j)
#ifdef NO_KERNEL_EMULATION_ALIGN
           kp=kp+8
#else
           kp=kp+4
#endif
         end do
         mp=loc(a4)
         do j=1,20
           y.pppp(1)=real(j)
#ifdef NO_KERNEL_EMULATION_ALIGN
           mp=mp+8
#else
           mp=mp+4
#endif
         end do
         end
