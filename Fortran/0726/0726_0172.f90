 call s1
 print *,'pass'
 end
 subroutine s1
 real,dimension(10)::a,b
 integer,dimension(10,10)::c=-99,cc=-99
 a=(/1. , -1. , 5. , 0. , .1 , 1.1 ,-2. , .1 , 1.5 , -1.1/)
 b=(/1. , 2.  , .1 , .1 , 3. , -1.1, 0. , 2. , -1. , 2.2 /)
 forall (i=1:10,j=1:10,a(i) > 0.0 .and. b(j) < 1.0)
  c(i,j)=+8
 end forall

 do ii=1,10
 do jj=1,10
  if (a(ii) > 0.0 .and. b(jj) < 1.0) then
  else
    cycle
  endif
  cc(ii,jj)=8
 enddo;enddo
  if (any(c/=cc))write(6,*) "NG"
end
