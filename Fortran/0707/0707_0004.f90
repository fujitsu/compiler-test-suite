 call s1
 print *,'pass'
 end
subroutine s1
integer(8),parameter,dimension(1,1,1)::k1=1,k2=2,k3=3,k4=4,k5=5,k6=6
character(*),parameter,dimension(1,1,1)::c1='1',c2='2',c3='3',c4='4',c5='5',c6='6'
call sx(k1,k2,k3,k4,k5,k6,c1,c2,c3,c4,c5,c6)
contains
subroutinE sx(k1,k2,k3,k4,k5,k6,c1,c2,c3,c4,c5,c6)
integer(8),dimension(:,:,:)::k1,k2,k3,k4,k5,k6
character(*),dimension(:,:,:)::c1,c2,c3,c4,c5,c6
write(85,*,err=101) (/k1,k2/)
write(85,*,err=101) k1,(/k2,k3/)
write(85,*,err=101) k1,(/k2,k3/),k4
write(85,*,err=101) (/k1,k2/),k3,(/k4,k5/),k6
write(85,*,err=101) (/(k1,k2,i=1,1)/)
write(85,*,err=101) k1,(/(int(i,8),k3,i=2,2)/)
write(85,*,err=101) k1,(/(k2,int(i,8),i=3,3)/),k4
write(85,*,err=101) (/(k1,k2,i=5,5)/),k3,(/(k4,int(i,8),i=5,5)/),k6
write(86,*,err=101) (/c1,c2/)
write(86,*,err=101) c1,(/c2,c3/)
write(86,*,err=101) c1,(/c2,c3/),c4
write(86,*,err=101) (/c1,c2/),c3,(/c4,c5/),c6
write(86,*,err=101) (/(c1,c2,i=1,1)/)
write(86,*,err=101) c1,(/(c2,c3,i=2,2)/)
write(86,*,err=101) c1,(/(c2,c3,i=3,3)/),c4
write(86,*,err=101) (/(c1,c2,i=5,5)/),c3,(/(c4,c5,i=5,5)/),c6
write(87,*,err=101) adjustl( (/c1,c2/))
write(87,*,err=101) adjustl( c1),adjustl((/c2,c3/))
write(87,*,err=101) adjustl( c1),adjustl((/c2,c3/)),adjustl(c4)
write(87,*,err=101) adjustl( (/c1,c2/)),adjustl(c3),adjustl((/c4,c5/)),adjustl(c6)
write(87,*,err=101) adjustl( (/(c1,c2,i=1,1)/))
write(87,*,err=101) adjustl( c1),adjustl((/(c2,c3,i=2,2)/))
write(87,*,err=101) adjustl( c1),adjustl((/(c2,c3,i=3,3)/)),adjustl(c4)
write(87,*,err=101) adjustl( (/(c1,c2,i=5,5)/)),adjustl(c3),adjustl((/(c4,c5,i=5,5)/)),adjustl(c6)
rewind 85;rewind 86;rewind 87
do j1=1,2
read(85,*)m1,m2;if (any((/m1,m2/)/=(/(i,i=1,2)/)))print *,'fail'
read(85,*)m1,m2,m3;if (any((/m1,m2,m3/)/=(/(i,i=1,3)/)))print *,'fail'
read(85,*)m1,m2,m3,m4;if (any((/m1,m2,m3,m4/)/=(/(i,i=1,4)/)))print *,'fail'
read(85,*)m1,m2,m3,m4,m5,m6;if (any((/m1,m2,m3,m4,m5,m6/)/=(/(i,i=1,6)/)))print *,'fail'
end do
do j1=1,2
read(86,*)m1;if (m1/=12)print *,'fail'
read(86,*)m1;if (m1/=123)print *,'fail'
read(86,*)m1;if (m1/=1234)print *,'fail'
read(86,*)m1;if (m1/=123456)print *,'fail'
end do
do j1=1,2
read(87,*)m1;if (m1/=12)print *,'fail'
read(87,*)m1;if (m1/=123)print *,'fail'
read(87,*)m1;if (m1/=1234)print *,'fail'
read(87,*)m1;if (m1/=123456)print *,'fail'
end do
return
101print *,'fail'
end subroutine
end
