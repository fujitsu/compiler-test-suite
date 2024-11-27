IMPLICIT INTEGER*2 (A-Z)
call sub01(-16000_2,16000_2,2000_2)
call sub02(-26000_2,26000_2,2000_2)
call sub11(-16000_2,16000_2,2000_2)
call sub12(-26000_2,26000_2,2000_2)
call sub22(-26000_2,26000_2,2000_2)
call sub32(-26000_2,26000_2,2000_2)
print *,'pass'
end
subroutine sub01(a1,a2,a3); IMPLICIT INTEGER*2 (A-Z)
parameter(p1=-16000_2,p2=16000_2,p3=2000_2)
integer(4) j
j=0;do a=a1,a2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,a2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=a1,p2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=a1,a2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,p2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,a2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=a1,p2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,p2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
end 
subroutine sub02(a1,a2,a3); IMPLICIT INTEGER*2 (A-Z)
parameter(p1=-26000_2,p2=26000_2,p3=2000_2)
integer(4) j
j=0;do a=a1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
end
subroutine sub11(a1,a2,a3); IMPLICIT INTEGER*2 (A-Z)
parameter(p1=-16000_2,p2=16000_2,p3=2000_2)
integer(4) j,a
j=0;do a=a1,a2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,a2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=a1,p2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=a1,a2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,p2,a3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,a2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=a1,p2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
j=0;do a=p1,p2,p3; j=j+1; end do; if (j/=17)write(6,*) "NG"
end 
subroutine sub12(a1,a2,a3); IMPLICIT INTEGER*2 (A-Z)
parameter(p1=-26000_2,p2=26000_2,p3=2000_2)
integer(4) j,a
j=0;do a=a1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
end
subroutine sub22(a1,a2,a3); IMPLICIT INTEGER*2 (A-Z)
parameter(p1=-26000_2,p2=26000_2,p3=2000_2)
integer(4) j
j=0;do a=a1,a2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,a2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2,1   ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
end
subroutine sub32(a1,a2,a3); IMPLICIT INTEGER*2 (A-Z)
parameter(p1=-26000_2,p2=26000_2,p3=2000_2)
integer(4) j
j=0;do a=a1,a2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,a2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,a2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=a1,p2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
j=0;do a=p1,p2,1_2  ; j=j+1; end do; if (j/=52001)write(6,*) "NG"
end
