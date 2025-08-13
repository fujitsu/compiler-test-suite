 subroutine sub(k)
 integer k(*)
 n=0
 if ((k(1)+k(2)+1.eq.k(3)+k(4)+1 .and. k(5)+k(6)+1.eq.k(7)+k(8)+1) .or. &
    (k(9).eq.k(10)+k(11)+1 .and. k(12).eq.k(13)+k(14)+1) .or. &
    (k(15).eq.k(16)+k(17)+1 .and. k(18).eq.k(19)+k(20)+1) )  then

                n=1

             endif
      write(26,*) n
             end
integer k(20)
do i1=1,2
do i2=1,2
do i3=1,2
do i4=1,2
do i5=1,2
k(01)=i1
k(02)=i2
k(03)=i3
k(04)=i4
k(05)=i5
k(06)=i1
k(07)=i2
k(08)=i3
k(09)=i4
k(10)=i5
k(11)=i1
k(12)=i2
k(13)=i3
k(14)=i4
k(15)=i5
k(16)=i1
k(17)=i2
k(18)=i3
k(19)=i4
k(20)=i5
call sub(k)
end do
end do
end do
end do
end do
call chk
print *,'pass'
end
subroutine chk
rewind 26
read(26,*)k;if (k/=1)write(6,*) "NG"
do kk=1,10
read(26,*)k;if (k/=0)write(6,*) "NG"
end do
read(26,*)k;if (k/=1)write(6,*) "NG"
do kk=1,8
read(26,*)k;if (k/=0)write(6,*) "NG"
end do
read(26,*)k;if (k/=1)write(6,*) "NG"
do kk=1,10
read(26,*)k;if (k/=0)write(6,*) "NG"
end do
read(26,*)k;if (k/=1)write(6,*) "NG"
end
