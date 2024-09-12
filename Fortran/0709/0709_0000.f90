 call s1
 print *,'pass'
 end
 subroutine s1
 integer*1 ::a1=0
 integer*2 ::b1=0
 integer*4 ::c1=0
 integer*8 ::d1=0
 real*4    ::e1=0
 real*8    ::f1=0
 real*16   ::g1=0
 complex(4) ::h1=0
 complex(8) ::i1=0
 complex(16) ::j1=0
 if (kind(real(a1))/=4)call errtra
 if (kind(real(b1))/=4)call errtra
 if (kind(real(c1))/=4)call errtra
 if (kind(real(d1))/=4)call errtra
 if (kind(real(e1))/=4)call errtra
 if (kind(real(f1))/=4)call errtra
 if (kind(real(g1))/=4)call errtra
 if (kind(real(h1))/=4)call errtra
 if (kind(real(i1))/=8)call errtra
 if (kind(real(j1))/=16)call errtra
 end
