 call s1
 print *,'pass'
 end
subroutine s1
 integer a(2)
 j1=1;j2=2
 call init
 read  (1,'(4i1)',advance='No') i
 read  (1,'(4i1)',advance='No') i,a(i)
 read  (1,'(4i1)',advance='No') (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No') (i,a(i),j=j1,j2)
!
 read  (1,'(4i1)',advance='No',end=1) i
 read  (1,'(4i1)',advance='No',end=1) i,a(i)
 read  (1,'(4i1)',advance='No',end=1) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',end=1) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',err=2) i
 read  (1,'(4i1)',advance='No',err=2) i,a(i)
 read  (1,'(4i1)',advance='No',err=2) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',err=2) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',eor=3) i
 read  (1,'(4i1)',advance='No',eor=3) i,a(i)
 read  (1,'(4i1)',advance='No',eor=3) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',eor=3) (i,a(i),j=j1,j2)
!
 read  (1,'(4i1)',advance='No',end=1,err=2) i
 read  (1,'(4i1)',advance='No',end=1,err=2) i,a(i)
 read  (1,'(4i1)',advance='No',end=1,err=2) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',end=1,err=2) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',end=1,eor=3) i
 read  (1,'(4i1)',advance='No',end=1,eor=3) i,a(i)
 read  (1,'(4i1)',advance='No',end=1,eor=3) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',end=1,eor=3) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',end=1,eor=3,err=2) i
 read  (1,'(4i1)',advance='No',end=1,eor=3,err=2) i,a(i)
 read  (1,'(4i1)',advance='No',end=1,eor=3,err=2) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',end=1,eor=3,err=2) (i,a(i),j=j1,j2)
!
 read  (1,'(4i1)',advance='No',err=2,eor=3) i
 read  (1,'(4i1)',advance='No',err=2,eor=3) i,a(i)
 read  (1,'(4i1)',advance='No',err=2,eor=3) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',err=2,eor=3) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',err=2,end=1) i
 read  (1,'(4i1)',advance='No',err=2,end=1) i,a(i)
 read  (1,'(4i1)',advance='No',err=2,end=1) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',err=2,end=1) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',err=2,end=1,eor=3) i
 read  (1,'(4i1)',advance='No',err=2,end=1,eor=3) i,a(i)
 read  (1,'(4i1)',advance='No',err=2,end=1,eor=3) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',err=2,end=1,eor=3) (i,a(i),j=j1,j2)
!
 read  (1,'(4i1)',advance='No',eor=3,end=1) i
 read  (1,'(4i1)',advance='No',eor=3,end=1) i,a(i)
 read  (1,'(4i1)',advance='No',eor=3,end=1) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',eor=3,end=1) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',eor=3,err=2) i
 read  (1,'(4i1)',advance='No',eor=3,err=2) i,a(i)
 read  (1,'(4i1)',advance='No',eor=3,err=2) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',eor=3,err=2) (i,a(i),j=j1,j2)
 read  (1,'(4i1)',advance='No',eor=3,err=2,end=1) i
 read  (1,'(4i1)',advance='No',eor=3,err=2,end=1) i,a(i)
 read  (1,'(4i1)',advance='No',eor=3,err=2,end=1) (i,a(i),j=1,2)
 read  (1,'(4i1)',advance='No',eor=3,err=2,end=1) (i,a(i),j=j1,j2)
 return
1 continue;return
2 continue;return
3 continue;return
 end
 subroutine init
 write(1,'(i1)',advance='no') 1
 write(1,'(2i1)',advance='no') 2,3
 write(1,'(4i1)',advance='no') 1,2,2,3
 write(1,'(4i1)',advance='no') 1,4,2,5
 do jj=1,4
 do ii=1,3
 write(1,'(1i1)',advance='no') 1
 write(1,'(2i1)',advance='no') 2,3
 write(1,'(4i1)',advance='no') 1,2,2,3
 write(1,'(4i1)',advance='no') 1,4,2,5
 end do
 end do
 rewind 1
 end
