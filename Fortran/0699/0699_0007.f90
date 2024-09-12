 call s1
 print *,'pass'
 end
subroutine s1
 integer a(0:20)
 j1=1;j2=2
 do k=33,143
 if (k>=18 .and. k<=18+11-1)cycle
 call init(k)
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
if (k>=44)cycle
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
 cycle 
1 continue;cycle
2 continue;cycle 
3 continue;cycle 
end do
 end
 subroutine init(k)
 integer,parameter,dimension(143):: p=&
  (/1,2,3,1,2,2,3,1,4,2,5,&
   (1,2,3,1,2,2,3,1,4,2,5,i=1,12)/)
 rewind 1
 write(1,'(143i1)',advance='no') p(1:k) 
 rewind 1
 end
