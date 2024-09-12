implicit none 
integer,save:: a=1, i=1,i2=1,i3=1, b=0
!$omp parallel 
i=5
!$omp  task
 do i=1,10
 do i2=1,10
 do i3=1,10
 b = b + a
 enddo
 enddo
 enddo
if ( i/=11 .or. i3/=11) print *,"NG"
!$omp endtask
!$omp endparallel
if ( i/=5) then
   print  *,"NG"
else if (i3/=1) then
   print *,"NG"
else                   
   print *,"pass"
end if
end
