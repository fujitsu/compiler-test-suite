implicit none
type x
integer j
real(8) tmor(3),tmp,tmp1,tmp2,tmp3,x
end type
type(x)::v
v%tmor(3)=2.d0;v%tmp=0.5d0;v%tmp1=3.d0;v%tmp2=4.0d0;v%tmp3=5.0d0
v%j=3;v%x=0.8
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+v%tmp+(v%tmp1+v%tmp2+v%tmp3+6.0d0)
if (abs(v%tmor(3)-20.5d0)>0.00001_8)print *,'error-0'
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+v%tmp*0.5d0+(v%tmp1+v%tmp2+v%tmp3+6.0d0)
if (abs(v%tmor(3)-20.25d0)>0.00001_8)print *,'error-1'
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+v%tmp*0.5d0+(v%tmp1*0.2d0+v%tmp2+v%tmp3)+6.0d0
if (abs(v%tmor(3)-17.85d0)>0.00001_8)print *,'error-2'
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(v%tmp+v%tmp1*0.2_8)+v%tmp2*0.2_8+v%tmp3
if (abs(v%tmor(3)-8.9d0)>0.00001_8)print *,'error-3',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(v%tmp+v%tmp1*0.2_8)+(v%tmp2*0.2_8+v%tmp3*0.2d0)
if (abs(v%tmor(3)-4.9d0)>0.00001_8)print *,'error-3',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(v%tmp*0.2d0+v%tmp1*0.2_8+v%tmp2*0.2_8)+v%tmp3
if (abs(v%tmor(3)-8.5d0)>0.00001_8)print *,'error-4',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(v%tmp*0.2d0+v%tmp1*0.2_8+v%tmp2*0.2_8+v%tmp3*3.0)
if (abs(v%tmor(3)-18.5d0)>0.00001_8)print *,'error-5',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(v%tmp*2.0d0+v%tmp1*0.2_8)+(v%tmp2*0.2_8+v%tmp3)
if (abs(v%tmor(3)-9.4d0)>0.00001_8)print *,'error-0001',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(v%tmp*2.0d0+v%tmp1*0.2_8)+v%tmp2*0.2_8+(v%tmp3*0.2d0)
if (abs(v%tmor(3)-5.4)>0.00001_8)print *,'error-0002',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(((2.0d0*v%tmp*0.2d0+v%tmp1*0.2_8)+v%tmp2*0.2_8)+v%tmp3)
if (abs(v%tmor(3)-8.6d0)>0.00001_8)print *,'error-0003',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+2.0d0*v%tmp*0.2d0+(v%tmp1*0.2_8+v%tmp2*0.2_8)+v%tmp3*3.0
if (abs(v%tmor(3)-18.6d0)>0.00001_8)print *,'error-0004',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+v%tmp*2.0d0+(v%tmp1*0.2_8+(v%tmp2*0.2_8+v%tmp3*0.2d0))
if (abs(v%tmor(3)-5.4d0)>0.00001_8)print *,'error-0011',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+v%tmp*2.0d0+(v%tmp1*0.2_8+v%tmp2*0.2_8)+2.0d0*v%tmp3*0.2d0
if (abs(v%tmor(3)-6.4)>0.00001_8)print *,'error-0012',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(2.0d0*v%tmp*0.2d0+v%tmp1*0.2_8)+(v%tmp2*0.2_8+v%tmp3*2.0d0)
if (abs(v%tmor(3)-13.6d0)>0.00001_8)print *,'error-0013',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+2.0d0*v%tmp*0.2d0+(v%tmp1*0.2_8+(v%tmp2*0.2_8+2.0d0*v%tmp3*3.0))
if (abs(v%tmor(3)-33.6d0)>0.00001_8)print *,'error-0014',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(((((v%tmp*2.0d0)+v%tmp1*0.2_8)+v%tmp2*0.2_8)+v%tmp3*0.2d0)+v%x)
if (abs(v%tmor(3)-6.2d0)>0.00001_8)print *,'error-0021',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+v%tmp*2.0d0+(v%tmp1*0.2_8+(v%tmp2*0.2_8+(2.0d0*v%tmp3*0.2d0+v%x)))
if (abs(v%tmor(3)-7.2)>0.00001_8)print *,'error-0022',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(v%tmp*2.0d0+(v%tmp1*0.2_8+(v%tmp2*0.2_8+(2.0d0*v%tmp3*0.2d0+v%x))))
if (abs(v%tmor(3)-7.2)>0.00001_8)print *,'error-0022-2',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+(2.0d0*v%tmp*0.2d0+v%tmp1*0.2_8)+(v%tmp2*0.2_8+v%tmp3*2.0d0+v%x)
if (abs(v%tmor(3)-14.4d0)>0.00001_8)print *,'error-0023',v%tmor(3)
v%tmor(3)=2.d0
!$omp atomic
v%tmor(v%j)=v%tmor(v%j)+2.0d0*v%tmp*0.2d0+(v%tmp1*0.2_8+v%tmp2*0.2_8+2.0d0*v%tmp3*3.0+v%x)
if (abs(v%tmor(3)-34.4d0)>0.00001_8)print *,'error-0024',v%tmor(3)
print *,'pass'
end
