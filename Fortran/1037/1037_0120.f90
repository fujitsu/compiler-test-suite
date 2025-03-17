implicit none
integer j
real(8) tmor(3),tmp,tmp1,tmp2,tmp3,x
tmor(3)=2.d0;tmp=0.5d0;tmp1=3.d0;tmp2=4.0d0;tmp3=5.0d0
j=3;x=0.8
!$omp atomic
tmor(j)=tmor(j)+tmp+tmp1+tmp2+tmp3+6.0d0
if (abs(tmor(3)-20.5d0)>0.00001_8)print *,'error-0'
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*0.5d0+tmp1+tmp2+tmp3+6.0d0
if (abs(tmor(3)-20.25d0)>0.00001_8)print *,'error-1'
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*0.5d0+tmp1*0.2d0+tmp2+tmp3+6.0d0
if (abs(tmor(3)-17.85d0)>0.00001_8)print *,'error-2'
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp+tmp1*0.2_8+tmp2*0.2_8+tmp3
if (abs(tmor(3)-8.9d0)>0.00001_8)print *,'error-3',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp+tmp1*0.2_8+tmp2*0.2_8+tmp3*0.2d0
if (abs(tmor(3)-4.9d0)>0.00001_8)print *,'error-3',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+tmp3
if (abs(tmor(3)-8.5d0)>0.00001_8)print *,'error-4',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+tmp3*3.0
if (abs(tmor(3)-18.5d0)>0.00001_8)print *,'error-5',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*2.0d0+tmp1*0.2_8+tmp2*0.2_8+tmp3
if (abs(tmor(3)-9.4d0)>0.00001_8)print *,'error-0001',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*2.0d0+tmp1*0.2_8+tmp2*0.2_8+tmp3*0.2d0
if (abs(tmor(3)-5.4)>0.00001_8)print *,'error-0002',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+2.0d0*tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+tmp3
if (abs(tmor(3)-8.6d0)>0.00001_8)print *,'error-0003',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+2.0d0*tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+tmp3*3.0
if (abs(tmor(3)-18.6d0)>0.00001_8)print *,'error-0004',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*2.0d0+tmp1*0.2_8+tmp2*0.2_8+tmp3*0.2d0
if (abs(tmor(3)-5.4d0)>0.00001_8)print *,'error-0011',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*2.0d0+tmp1*0.2_8+tmp2*0.2_8+2.0d0*tmp3*0.2d0
if (abs(tmor(3)-6.4)>0.00001_8)print *,'error-0012',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+2.0d0*tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+tmp3*2.0d0
if (abs(tmor(3)-13.6d0)>0.00001_8)print *,'error-0013',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+2.0d0*tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+2.0d0*tmp3*3.0
if (abs(tmor(3)-33.6d0)>0.00001_8)print *,'error-0014',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*2.0d0+tmp1*0.2_8+tmp2*0.2_8+tmp3*0.2d0+x
if (abs(tmor(3)-6.2d0)>0.00001_8)print *,'error-0021',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+tmp*2.0d0+tmp1*0.2_8+tmp2*0.2_8+2.0d0*tmp3*0.2d0+x
if (abs(tmor(3)-7.2)>0.00001_8)print *,'error-0022',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+2.0d0*tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+tmp3*2.0d0+x
if (abs(tmor(3)-14.4d0)>0.00001_8)print *,'error-0023',tmor(3)
tmor(3)=2.d0
!$omp atomic
tmor(j)=tmor(j)+2.0d0*tmp*0.2d0+tmp1*0.2_8+tmp2*0.2_8+2.0d0*tmp3*3.0+x
if (abs(tmor(3)-34.4d0)>0.00001_8)print *,'error-0024',tmor(3)
print *,'pass'
end
