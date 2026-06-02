       complex c1(10),c2(10)
       complex*16 cc1(10),cc2(10)
       complex*32 ccc1(10),ccc2(10)
       c1=(0.0,0.0)
       c2=(4.0,4.0)
       cc1=(0.d0,0.d0)
       cc2=(4.d0,4.d0)
       ccc1=(0.q0,0.q0)
       ccc2=(4.q0,4.q0)
       call sub(c1,c2,cc1,cc2,ccc1,ccc2)
       end
       subroutine sub(c1,c2,cc1,cc2,ccc1,ccc2)
       complex c1(10),c2(10)
       complex*16 cc1(10),cc2(10)
       complex*32 ccc1(10),ccc2(10)
       do i=1,10
         c1(i)=c2(i)/(2.0,2.0)
         cc1(i)=cc2(i)/(2.d0,2.d0)
         ccc1(i)=ccc2(i)/(2.q0,2.q0)
       enddo
       do i=1,10
         if (c1(i).ne.(2.00000000,0.00000000E+00)) print *,'fail'
         if (cc1(i).ne.(2.000000000000000,0.000000000000000E+00)) print *,'fail'
         if (ccc1(i).ne.(2.0000000000000000000000000000000000,0.0000000000000000000000000000000000E+0000)) print *,'fail'
       enddo
       print *,'pass'
       c1=c2/(2.0,2.0)
       cc1=cc2/(2.d0,2.d0)
       ccc1=ccc2/(2.q0,2.q0)
       do i=1,10
         if (c1(i).ne.(2.00000000,0.00000000E+00)) print *,'fail'
         if (cc1(i).ne.(2.000000000000000,0.000000000000000E+00)) print *,'fail'
         if (ccc1(i).ne.(2.0000000000000000000000000000000000,0.0000000000000000000000000000000000E+0000)) print *,'fail'
       enddo
       print *,'pass'
       end
