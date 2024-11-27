integer j(30)
real(16)::i
do i=-1,2
 j=0
 call sub(j)
 write(11+int(i),*) j
end do
 call chk
 print *,'pass'
contains
 subroutine sub(j)
 dimension j(:)
    if (.not.i>1)j(01)=1
    if (.not.i>1)goto 101
    j(02)=1
101 continue
    if (     i>1)j(03)=1
    if (     i>1)goto 102
    j(04)=1
102 continue
    if (.not.i>=1)j(05)=1
    if (.not.i>=1)goto 103
    j(06)=1
103 continue
    if (     i>=1)j(07)=1
    if (     i>=1)goto 104
    j(08)=1
104 continue
    if (.not.i==1)j(09)=1
    if (.not.i==1)goto 105
    j(10)=1
105 continue
    if (     i==1)j(11)=1
    if (     i==1)goto 106
    j(12)=1
106 continue
    if (.not.i/=1)j(13)=1
    if (.not.i/=1)goto 107
    j(14)=1
107 continue
    if (     i/=1)j(15)=1
    if (     i/=1)goto 108
    j(16)=1
108 continue
    ii=13
    ii=ii+4
    if (.not.i<1)j(ii)=1
    if (.not.i<1)goto 109
    j(ii+1)=1
109 continue
    if (     i<1)j(ii+2)=1
    if (     i<1)goto 110
    j(ii+3)=1
110 continue
    ii=ii+4
    if (.not.i<=1)j(ii)=1
    if (.not.i<=1)goto 111
    j(ii+1)=1
111 continue
    if (     i<=1)j(ii+2)=1
    if (     i<=1)goto 112
    j(ii+3)=1
112 continue
 end subroutine 
     end
subroutine chk
integer j(10:13,30),jj(30)
j(10,:)=(/1,0,0,1,1,0,0,1,1,0,0,1,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0/)
j(11,:)=(/1,0,0,1,1,0,0,1,1,0,0,1,0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,0/)
j(12,:)=(/1,0,0,1,0,1,1,0,0,1,1,0,1,0,0,1,1,0,0,1,0,1,1,0,0,0,0,0,0,0/)
j(13,:)=(/0,1,1,0,0,1,1,0,1,0,0,1,0,1,1,0,1,0,0,1,1,0,0,1,0,0,0,0,0,0/)
do i=10,13
rewind i
read(i,*) jj
if (any(j(i,:)/=jj))write(6,*) "NG"
end do
end
