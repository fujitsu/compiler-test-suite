call ss1(-3)
print *,'pass'
end
subroutine ss1(i)
real(4)::a(i,i)
a=0.
call chk1(a,i)
rewind 140
rewind 141
read(140,*       ) ak;if (abs(ak-1)>0.001)print *,'error-1'
read(140,*,end=11) ak;print *,'error-2'
11 read(141       ) ak;if (abs(ak-2)>0.001)print *,'error-3'
   read(141       ) ak;if (abs(ak-3)>0.001)print *,'error-4'
12 continue
end
 subroutine chk1(a,i)
 real(4),dimension(i,i)::a
 if (any(shape(a)/=(/0,0/)))print *,'error-5'
 write(140,*)1.
 write(140,*)a
 write(141)2.
 write(141)a,3.
 end subroutine
