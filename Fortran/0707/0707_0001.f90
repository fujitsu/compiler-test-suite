 call s1
 print *,'pass'
 end
 subroutine s1
  logical,parameter,dimension(2,2)::w=reshape((/.false.,.true.,.true.,.false./),(/2,2/))
  complex(8),parameter,dimension(2,2)::ww=RESHAPE((/(0.0e0_8,-5.0e-21_8),(/( &
          1373.5412338183528e0_8,3.87199238056892e-5_8),( &
          1.054698939971034e-20_8,9.709661167805633e-5_8),(0.0e0_8, &
          0.00820417814163857e0_8)/)/),(/2,2/))
  if (abs( PRODUCT(ww,mask=w)-(-3.75957E-9_8,0.133366))>0.001_8)print *,'fail'
  end
