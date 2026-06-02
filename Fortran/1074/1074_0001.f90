       complex c1,c2,c3
       complex*16 cc1,cc2,cc3
       complex*32 ccc1,ccc2,ccc3
       c1=(0.0,0.0)
       c2=(4.0,4.0)
       c3=(2.0,2.0)
       cc1=(0.d0,0.d0)
       cc2=(4.d0,4.d0)
       cc3=(2.d0,2.d0)
       ccc1=(0.q0,0.q0)
       ccc2=(4.q0,4.q0)
       ccc3=(2.q0,2.q0)
       call sub(c1,c2,c3,cc1,cc2,cc3,ccc1,ccc2,ccc3)
       if (c1.ne.(2.00000000,0.00000000E+00)) print *,'fail'
       if (cc1.ne.(2.000000000000000,0.000000000000000E+00)) print *,'fail'
       if (ccc1.ne.(2.0000000000000000000000000000000000,0.0000000000000000000000000000000000E+0000)) print *,'fail'
       print *,'pass'
       end
       subroutine sub(c1,c2,c3,cc1,cc2,cc3,ccc1,ccc2,ccc3)
       complex c1,c2,c3
       complex*16 cc1,cc2,cc3
       complex*32 ccc1,ccc2,ccc3
       c1=c2/c3
       cc1=cc2/cc3
       ccc1=ccc2/ccc3
       end
