subroutine s1
real x(10)
integer n
n=10
i=0
do mm=1,n
   x(iii) = mm +iii
  do mm1=1,n
   x(iii) = mm1 +iii
  enddo
enddo
do mm2=1,n
   x(iii) = mm2 +iii
  do concurrent(iii=1:n)
  do  mm3=1,n
   x(iii) = mm3 +iii
  enddo
  enddo
enddo
do concurrent(iii=1:n)
 do i=1,n
   x(iii) = i +iii
 enddo
 do ii=1,n
   x(iii) = ii +iii + n
 enddo
 enddo

do concurrent(iii=1:n)
 do jj=1,n
   x(iii) = jj +iii
 enddo
 do kk=1,n
   x(iii) = kk +iii
 enddo
enddo
do ll=1,n
  x(iii) = ll +iii
enddo
end
print *,'pass'
end
