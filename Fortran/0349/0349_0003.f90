integer*1  i1a(10)/10*0/,i1b(10),i1c(10),ii1/1/
integer*2  i2a(10)/10*0/,i2b(10),i2c(10),ii2/1/
integer*4  i4a(10)/10*0/,i4b(10),i4c(10),ii4/1/
integer*8  i8a(10)/10*0/,i8b(10),i8c(10),ii8/1/
real*4     r4a(10)/10*0/,r4b(10),r4c(10),rr4/1/
real*8     r8a(10)/10*0/,r8b(10),r8c(10),rr8/1/
real*16    r16a(10)/10*0/,r16b(10),r16c(10),rr16/1/
complex*8     c8a(10)/10*0/,c8b(10),c8c(10),cc8/1/
complex*16    c16a(10)/10*0/,c16b(10),c16c(10),cc16/1/
complex*32    c32a(10)/10*0/,c32b(10),c32c(10),cc32/1/

do i=1,10
  i1b(i) = i
  i2b(i) = i	
  i4b(i) = i	
  i8b(i) = i	
  r4b(i) = i	
  r8b(i) = i	
  r16b(i) = i	
  c8b(i) = i	
  c16b(i) = i	
  c32b(i) = i	
  i1c(i) = i
  i2c(i) = i	
  i4c(i) = i	
  i8c(i) = i	
  r4c(i) = i	
  r8c(i) = i	
  r16c(i) = i	
  c8c(i) = i	
  c16c(i) = i	
  c32c(i) = i	
enddo	

!
do i=1,10
  i1a(i) = i1b(i) + i1c(i) + ii1
  ii1 = ii1 + 1
enddo

do i=1,10
  if (i1a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  i2a(i) = i2b(i) + i2c(i) + ii2
  ii2 = ii2 + 1	
enddo

do i=1,10
  if (i2a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  i4a(i) = i4b(i) + i4c(i) + ii4
  ii4 = ii4 + 1
enddo

do i=1,10
  if (i4a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  i8a(i) = i8b(i) + i8c(i) + ii8
  ii8 = ii8 + 1
enddo

do i=1,10
  if (i8a(i) .ne. i*3) goto 20
enddo

!
do i=1,10
  r4a(i) = r4b(i) + r4c(i) + rr4
  rr4 = rr4 + 1
enddo

do i=1,10
  if (r4a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  r8a(i) = r8b(i) + r8c(i) + rr8
  rr8 = rr8 + 1
enddo

do i=1,10
  if (r8a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  r16a(i) = r16b(i) + r16c(i) + rr16
  rr16 = rr16 + 1
enddo

do i=1,10
  if (r16a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  c8a(i) = c8b(i) + c8c(i) + cc8
  cc8 = cc8 + 1
enddo

do i=1,10
  if (c8a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  c16a(i) = c16b(i) + c16c(i) + cc16
  cc16 = cc16 + 1
enddo

do i=1,10
  if (c16a(i) .ne. i*3) goto 20
enddo
!
do i=1,10
  c32a(i) = c32b(i) + c32c(i) + cc32
  cc32 = cc32 + 1
enddo

do i=1,10
  if (c32a(i) .ne. i*3) goto 20
enddo


write(6,*) ' OK '
goto 30
20 write(6,*) ' NG '
write(6,*) i1a
write(6,*) i2a
write(6,*) i4a
write(6,*) i8a
write(6,1) r4a
write(6,1) r8a
write(6,1) r16a
write(6,*) c8a
write(6,*) c16a
write(6,*) c32a
1 format(10f6.2)
30 continue
end


