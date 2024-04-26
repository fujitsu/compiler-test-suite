integer a(3),b(3)/10,20,30/
integer aa(3),bb(3)/100,200,300/
do      i=1,3
!$OMP PARALLEL
 a(i)=b(i)+1
 aa(i)=bb(i)+1
!$OMP END PARALLEL
end do    
if (a(1)/=11)print *,'error-1'
if (a(2)/=21)print *,'error-2'
if (a(3)/=31)print *,'error-3'
if (aa(1)/=101)print *,'error-1'
if (aa(2)/=201)print *,'error-2'
if (aa(3)/=301)print *,'error-3'
print *,'pass'
end

