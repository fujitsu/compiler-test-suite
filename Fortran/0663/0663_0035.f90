integer ary(10),i,j
integer ,parameter :: n=10,m=20
ary=0
forall (i=1:m-n)
  ary(i) = 1
end forall
do j=1,10
  if (ary(j).ne.1) go to 999
enddo
    print *,'pass'
    goto 9999
999 continue
    print *,'ng'
9999 continue
stop
end

