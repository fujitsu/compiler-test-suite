IMPLICIT INTEGER*2 (A-Z)
call sub01(-26000_2,26000_2,2000_2)
print *,'pass'
end
subroutine sub01(a1,a2,a3); IMPLICIT INTEGER*2 (A-Z)
parameter(p1=-26000_2,p2=26000_2,p3=2000_2);integer j
j=0;do a=a1,a2   ; j=j+1; ;end do; if (j/=52001)write(6,*) "NG"
end
