 call s1
 print *,'pass'
 end
 subroutine s1
  real:: a(10)=(/(m,m=-5,4)/),b(10)=(/(m,m=-5,4)/),z(10,10)=9,zz(10,10)=9,&
   zzz(10,10)=9,zzzz(10,10)=9
  forall(i=1:10,j=1:10,a(i)>0.0 .and. b(j)<1.0)
    z  (i,j)=1.0/a(i)+1.0*b(j)
    zz (i,j)=1.0/a(i)+1.0*b(j)
    zzz(i,j)=1.0/a(i)+1.0*b(j)
  end forall
  do     i=1,10;do j=1,10
    if (.not.(a(i)>0.0 .and. b(j)<1.0) )cycle
    zzzz(i,j)=1.0/a(i)+1.0*b(j)
  end do;end do
  if (any(z/=zzzz))write(6,*) "NG"
  if (any(zz/=zzzz))write(6,*) "NG"
  if (any(zzz/=zzzz))write(6,*) "NG"
      end
