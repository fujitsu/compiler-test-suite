call ss1(-3)
print *,'pass'
end
subroutine ss1(i)
real(4)::a(i,i)
a=0.
call chk1(a,i)
rewind 1
rewind 2
read(1,*       ) ak;if (abs(ak-1)>0.001)print *,'error-1'
read(1,*,end=11) ak;print *,'error-2'
11 read(2       ) ak;if (abs(ak-2)>0.001)print *,'error-3'
   read(2       ) ak;if (abs(ak-3)>0.001)print *,'error-4'
12 continue
end
 subroutine chk1(a,i)
 real(4),dimension(i,i)::a
 if (any(shape(a)/=(/0,0/)))print *,'error-5'
 write(1,*)1.
 write(1,*)a
 write(2)2.
 write(2)a,3.
 end subroutine
