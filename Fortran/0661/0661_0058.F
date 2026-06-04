      call h1
      print *,'pass'
      end
      subroutine h1
      implicit integer*8(p,w,q,r,s,t)
      integer*8 size,malloc
      common /p/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      common /q/q1,q2,q3,q4,q5,q6,q7,q8,q9,qa,qb,qc
      common /s/s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc
      parameter (i=-2,j=+2,k=j-i+1,size=4)
      p1 =malloc(size*k*k*k)
      p2 =malloc(size*k*k*k)
      p3 =malloc(size*k*k*k)
      p4 =malloc(size*k*k*k)
      p5 =malloc(size*k*k )
      p6 =malloc(size*k*k )
      p7 =malloc(size*k*k )
      p8 =malloc(size*k*k )
      p9 =malloc(size*k )
      pa =malloc(size*k )
      pb =malloc(size*k )
      pc =malloc(size*k )
      w1 =malloc(size*k*k*k)
      w2 =malloc(size*k*k*k)
      w3 =malloc(size*k*k*k)
      w4 =malloc(size*k*k*k)
      w5 =malloc(size*k*k )
      w6 =malloc(size*k*k )
      w7 =malloc(size*k*k )
      w8 =malloc(size*k*k )
      w9 =malloc(size*k )
      wa =malloc(size*k )
      wb =malloc(size*k )
      wc =malloc(size*k )
      q1 =malloc(size*k*k*k)
      q2 =malloc(size*k*k*k)
      q3 =malloc(size*k*k*k)
      q4 =malloc(size*k*k*k)
      q5 =malloc(size*k*k )
      q6 =malloc(size*k*k )
      q7 =malloc(size*k*k )
      q8 =malloc(size*k*k )
      q9 =malloc(size*k )
      qa =malloc(size*k )
      qb =malloc(size*k )
      qc =malloc(size*k )
      r1 =malloc(size*k*k*k)
      r2 =malloc(size*k*k*k)
      r3 =malloc(size*k*k*k)
      r4 =malloc(size*k*k*k)
      r5 =malloc(size*k*k )
      r6 =malloc(size*k*k )
      r7 =malloc(size*k*k )
      r8 =malloc(size*k*k )
      r9 =malloc(size*k )
      ra =malloc(size*k )
      rb =malloc(size*k )
      rc =malloc(size*k )
      s1 =malloc(size*k*k*k)
      s2 =malloc(size*k*k*k)
      s3 =malloc(size*k*k*k)
      s4 =malloc(size*k*k*k)
      s5 =malloc(size*k*k )
      s6 =malloc(size*k*k )
      s7 =malloc(size*k*k )
      s8 =malloc(size*k*k )
      s9 =malloc(size*k )
      sa =malloc(size*k )
      sb =malloc(size*k )
      sc =malloc(size*k )
      t1 =malloc(size*k*k*k)
      t2 =malloc(size*k*k*k)
      t3 =malloc(size*k*k*k)
      t4 =malloc(size*k*k*k)
      t5 =malloc(size*k*k )
      t6 =malloc(size*k*k )
      t7 =malloc(size*k*k )
      t8 =malloc(size*k*k )
      t9 =malloc(size*k )
      ta =malloc(size*k )
      tb =malloc(size*k )
      tc =malloc(size*k )
      call s11(i,j)
      call s12(i,j,w1,w2,w3,w4,w5,w6,w7,w8,w9,wa,wb,wc)
      call s21(i,j)
      call s22(i,j,w1,w2,w3,w4,w5,w6,w7,w8,w9,wa,wb,wc)
      call s31(i,j)
      call s32(i,j,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc)
      call s41(   )
      call s42(    r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc)
      call s51(i,j)
      call s52(i,j,t1,t2,t3,t4,t5,t6,t7,t8,t9,ta,tb,tc)
      call s61(   )
      call s62(    t1,t2,t3,t4,t5,t6,t7,t8,t9,ta,tb,tc)
      end
      subroutine s11(i,j)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /p/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      do 11 l=i,j
         a9(l)=l
         aa(l)=l
         ab(l)=l
 11      ac(l)=l
      do 12 l=i,j
      do 12 m=i,j
         a5(m,l)=l+m
         a6(m,l)=l+m
         a7(m,l)=l+m
 12      a8(m,l)=l+m
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
         a1(n,m,l)=l+m+n
         a2(n,m,l)=l+m+n
         a3(n,m,l)=l+m+n
 14      a4(n,m,l)=l+m+n
      end
      subroutine s12(i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      do 11 l=i,j
         a9(l)=l
         aa(l)=l
         ab(l)=l
 11      ac(l)=l
      do 12 l=i,j
      do 12 m=i,j
         a5(m,l)=l+m
         a6(m,l)=l+m
         a7(m,l)=l+m
 12      a8(m,l)=l+m
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
         a1(n,m,l)=l+m+n
         a2(n,m,l)=l+m+n
         a3(n,m,l)=l+m+n
 14      a4(n,m,l)=l+m+n
      end
      subroutine s21(i,j)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /p/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      do 11 l=i,j
      if(a9(l).ne.l)print *,'fail'
      if(aa(l).ne.l)print *,'fail'
      if(ab(l).ne.l)print *,'fail'
 11   if(ac(l).ne.l)print *,'fail'
      do 12 l=i,j
      do 12 m=i,j
      if(a5(m,l).ne.l+m)print *,'fail'
      if(a6(m,l).ne.l+m)print *,'fail'
      if(a7(m,l).ne.l+m)print *,'fail'
 12   if(a8(m,l).ne.l+m)print *,'fail'
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
      if(a1(n,m,l).ne.l+m+n )print *,'fail'
      if(a2(n,m,l).ne.l+m+n )print *,'fail'
      if(a3(n,m,l).ne.l+m+n )print *,'fail'
 14   if(a4(n,m,l).ne.l+m+n )print *,'fail'
      end
      subroutine s22(i,j,
     1       p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(    i:j)    ,aa(i:j    )
      dimension ab(    i:j)    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      do 11 l=i,j
      if(a9(l).ne.l)print *,'fail'
      if(aa(l).ne.l)print *,'fail'
      if(ab(l).ne.l)print *,'fail'
 11   if(ac(l).ne.l)print *,'fail'
      do 12 l=i,j
      do 12 m=i,j
      if(a5(m,l).ne.l+m)print *,'fail'
      if(a6(m,l).ne.l+m)print *,'fail'
      if(a7(m,l).ne.l+m)print *,'fail'
 12   if(a8(m,l).ne.l+m)print *,'fail'
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
      if(a1(n,m,l).ne.l+m+n )print *,'fail'
      if(a2(n,m,l).ne.l+m+n )print *,'fail'
      if(a3(n,m,l).ne.l+m+n )print *,'fail'
 14   if(a4(n,m,l).ne.l+m+n )print *,'fail'
      end
      subroutine s31(i,j)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /q/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      do 11 l=i,j
         a9(l)=l
         aa(l)=l
         ab(l)=l
 11      ac(l)=l
      do 12 l=i,j
      do 12 m=i,j
         a5(m,l)=l+m
         a6(m,l)=l+m
         a7(m,l)=l+m
 12      a8(m,l)=l+m
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
         a1(n,m,l)=l+m+n
         a2(n,m,l)=l+m+n
         a3(n,m,l)=l+m+n
 14      a4(n,m,l)=l+m+n
      write(1,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      end
      subroutine s32(i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      do 11 l=i,j
         a9(l)=l
         aa(l)=l
         ab(l)=l
 11      ac(l)=l
      do 12 l=i,j
      do 12 m=i,j
         a5(m,l)=l+m
         a6(m,l)=l+m
         a7(m,l)=l+m
 12      a8(m,l)=l+m
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
         a1(n,m,l)=l+m+n
         a2(n,m,l)=l+m+n
         a3(n,m,l)=l+m+n
 14      a4(n,m,l)=l+m+n
      write(2,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      end
      subroutine s41(   )
      parameter (i=-2,j=+2)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /q/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      rewind 1
      read (1,*)a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      do 11 l=i,j
      if(a9(l).ne.l)print *,'fail'
      if(aa(l).ne.l)print *,'fail'
      if(ab(l).ne.l)print *,'fail'
 11   if(ac(l).ne.l)print *,'fail'
      do 12 l=i,j
      do 12 m=i,j
      if(a5(m,l).ne.l+m)print *,'fail'
      if(a6(m,l).ne.l+m)print *,'fail'
      if(a7(m,l).ne.l+m)print *,'fail'
 12   if(a8(m,l).ne.l+m)print *,'fail'
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
      if(a1(n,m,l).ne.l+m+n )print *,'fail'
      if(a2(n,m,l).ne.l+m+n )print *,'fail'
      if(a3(n,m,l).ne.l+m+n )print *,'fail'
 14   if(a4(n,m,l).ne.l+m+n )print *,'fail'
      end
      subroutine s42(
     1       p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      parameter (i=-2,j=+2)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      rewind 2
      read (2,*)a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      do 11 l=i,j
      if(a9(l).ne.l)print *,'fail'
      if(aa(l).ne.l)print *,'fail'
      if(ab(l).ne.l)print *,'fail'
 11   if(ac(l).ne.l)print *,'fail'
      do 12 l=i,j
      do 12 m=i,j
      if(a5(m,l).ne.l+m)print *,'fail'
      if(a6(m,l).ne.l+m)print *,'fail'
      if(a7(m,l).ne.l+m)print *,'fail'
 12   if(a8(m,l).ne.l+m)print *,'fail'
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
      if(a1(n,m,l).ne.l+m+n )print *,'fail'
      if(a2(n,m,l).ne.l+m+n )print *,'fail'
      if(a3(n,m,l).ne.l+m+n )print *,'fail'
 14   if(a4(n,m,l).ne.l+m+n )print *,'fail'
      end
      subroutine s51(i,j)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /s/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      do 11 l=i,j
         a9(l)=l
         aa(l)=l
         ab(l)=l
 11      ac(l)=l
      do 12 l=i,j
      do 12 m=i,j
         a5(m,l)=l+m
         a6(m,l)=l+m
         a7(m,l)=l+m
 12      a8(m,l)=l+m
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
         a1(n,m,l)=l+m+n
         a2(n,m,l)=l+m+n
         a3(n,m,l)=l+m+n
 14      a4(n,m,l)=l+m+n
      call s511(i,j)
      end
      subroutine s511(i,j)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /s/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      write(11,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      end
      subroutine s52(i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      do 11 l=i,j
         a9(l)=l
         aa(l)=l
         ab(l)=l
 11      ac(l)=l
      do 12 l=i,j
      do 12 m=i,j
         a5(m,l)=l+m
         a6(m,l)=l+m
         a7(m,l)=l+m
 12      a8(m,l)=l+m
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
         a1(n,m,l)=l+m+n
         a2(n,m,l)=l+m+n
         a3(n,m,l)=l+m+n
 14      a4(n,m,l)=l+m+n
      call       s521(i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      end
      subroutine s521(i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      call       s522(-2,+2,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      end
      subroutine s522(i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      write(12,*) a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      end
      subroutine s61(   )
      parameter (i=-2,j=+2)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /s/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      rewind 11
      read (11,*)a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      call s611(i,j)
      end
      subroutine s611(i,j)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      common /s/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc
      do 11 l=i,j
      if(a9(l).ne.l)print *,'fail'
      if(aa(l).ne.l)print *,'fail'
      if(ab(l).ne.l)print *,'fail'
 11   if(ac(l).ne.l)print *,'fail'
      do 12 l=i,j
      do 12 m=i,j
      if(a5(m,l).ne.l+m)print *,'fail'
      if(a6(m,l).ne.l+m)print *,'fail'
      if(a7(m,l).ne.l+m)print *,'fail'
 12   if(a8(m,l).ne.l+m)print *,'fail'
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
      if(a1(n,m,l).ne.l+m+n )print *,'fail'
      if(a2(n,m,l).ne.l+m+n )print *,'fail'
      if(a3(n,m,l).ne.l+m+n )print *,'fail'
 14   if(a4(n,m,l).ne.l+m+n )print *,'fail'
      end
      subroutine s62( p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      parameter (i=-2,j=+2)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      rewind 12
      read (12,*)a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      call       s621( i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      end
      subroutine s621( i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      implicit integer(a-o,q-z)
      implicit integer*8(p)
      call       s622( i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      end
      subroutine s622( i,j,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc)
      pointer (p1,a1),(p2,a2),(p3,a3),(p4,a4),(p5,a5),(p6,a6)
      pointer (p7,a7),(p8,a8),(p9,a9),(pa,aa),(pb,ab),(pc,ac)
      dimension a9(i:j    )    ,aa(i:j    )
      dimension ab(i:j    )    ,ac(i:j    )
      dimension a1(i:j,i:j,i:j),a2(i:j,i:j,i:j)
      dimension a3(i:j,i:j,i:j),a4(i:j,i:j,i:j)
      dimension a5(i:j,i:j)    ,a6(i:j,i:j)
      dimension a7(i:j,i:j)    ,a8(i:j,i:j)
      integer a1,a2,a3,a4,a5,a6,a7,a8,a9,aa,ab,ac
      do 11 l=i,j
      if(a9(l).ne.l)print *,'fail'
      if(aa(l).ne.l)print *,'fail'
      if(ab(l).ne.l)print *,'fail'
 11   if(ac(l).ne.l)print *,'fail'
      do 12 l=i,j
      do 12 m=i,j
      if(a5(m,l).ne.l+m)print *,'fail'
      if(a6(m,l).ne.l+m)print *,'fail'
      if(a7(m,l).ne.l+m)print *,'fail'
 12   if(a8(m,l).ne.l+m)print *,'fail'
      do 14 l=i,j
      do 14 m=i,j
      do 14 n=i,j
      if(a1(n,m,l).ne.l+m+n )print *,'fail'
      if(a2(n,m,l).ne.l+m+n )print *,'fail'
      if(a3(n,m,l).ne.l+m+n )print *,'fail'
 14   if(a4(n,m,l).ne.l+m+n )print *,'fail'
      end
