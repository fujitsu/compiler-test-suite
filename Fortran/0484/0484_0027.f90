integer,save:: a=1, i=1,i2=1,i3=1, b=1
!$omp parallel 
!$omp  simd   collapse(2)
 do i=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
if ( i/=11 .or. i3/=11) print *,"NG"
!$omp endparallel
if ( i/=11) then
   print  *,"NG"
else if (i3/=1) then
   print *,"NG"
else                   
   print *,"pass"
end if
end
