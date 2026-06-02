integer*1  i1a(10)/10*0/,i1b(10),i1c(10)
integer*2  i2a(10)/10*0/,i2b(10),i2c(10)
integer*4  i4a(10)/10*0/,i4b(10),i4c(10)
integer*8  i8a(10)/10*0/,i8b(10),i8c(10)

data i1b/1,1,1,1,-1,-1,-1,-1,1,-1/
data i2b/1,1,1,1,-1,-1,-1,-1,1,-1/
data i4b/1,1,1,1,-1,-1,-1,-1,1,-1/
data i8b/1,1,1,1,-1,-1,-1,-1,1,-1/
data i1c/1,-1,1,-1,1,-1,1,-1,1,-1/
data i2c/1,-1,1,-1,1,-1,1,-1,1,-1/
data i4c/1,-1,1,-1,1,-1,1,-1,1,-1/
data i8c/1,-1,1,-1,1,-1,1,-1,1,-1/

!
do i=1,10
  i1a(i) = ishft(i1b(i), 1)
enddo

do i=1,10
  if (i1a(i) .ne. (ishft(i1b(i), 1)) ) goto 20
enddo
!
do i=1,10
  i2a(i) = ishft(i2b(i), 1)
enddo

do i=1,10
  if (i2a(i) .ne. (ishft(i2b(i), 1)) ) goto 20
enddo
!
do i=1,10
  i4a(i) = ishft(i4b(i), 1)
enddo

do i=1,10
  if (i4a(i) .ne. (ishft(i4b(i), 1)) ) goto 20
enddo
!
do i=1,10
  i8a(i) = ishft(i8b(i), 1)
enddo

do i=1,10
  if (i8a(i) .ne. (ishft(i8b(i), 1)) ) goto 20
enddo
!
!
do i=1,10
  i1a(i) = ishft(i1b(i), -1)
enddo

do i=1,10
  if (i1a(i) .ne. (ishft(i1b(i), -1)) ) goto 20
enddo
!
do i=1,10
  i2a(i) = ishft(i2b(i), -1)
enddo

do i=1,10
  if (i2a(i) .ne. (ishft(i2b(i), -1)) ) goto 20
enddo
!
do i=1,10
  i4a(i) = ishft(i4b(i), -1)
enddo

do i=1,10
  if (i4a(i) .ne. (ishft(i4b(i), -1)) ) goto 20
enddo
!
do i=1,10
  i8a(i) = ishft(i8b(i), -1)
enddo

do i=1,10
  if (i8a(i) .ne. (ishft(i8b(i), -1)) ) goto 20
enddo

!
!
do i=1,10
  i1a(i) = ishft(i1b(i), i1c(i))
enddo

do i=1,10
  if (i1a(i) .ne. (ishft(i1b(i), i1c(i))) ) goto 20
enddo
!
do i=1,10
  i2a(i) = ishft(i2b(i), i2c(i))
enddo

do i=1,10
  if (i2a(i) .ne. (ishft(i2b(i), i2c(i))) ) goto 20
enddo
!
do i=1,10
  i4a(i) = ishft(i4b(i), i4c(i))
enddo

do i=1,10
  if (i4a(i) .ne. (ishft(i4b(i), i4c(i))) ) goto 20
enddo
!
do i=1,10
  i8a(i) = ishft(i8b(i), i8c(i))
enddo

do i=1,10
  if (i8a(i) .ne. (ishft(i8b(i), i8c(i))) ) goto 20
enddo


!
!
do i=1,10
  j = 10
  i1a(i) = ishft(i1b(i), j)
enddo

do i=1,10
  j = 10 
  if (i1a(i) .ne. (ishft(i1b(i), j)) ) goto 20
enddo
!
do i=1,10
  j = 20
  i2a(i) = ishft(i2b(i), j)
enddo

do i=1,10
  j = 20 
  if (i2a(i) .ne. (ishft(i2b(i), j )) ) goto 20
enddo
!
do i=1,10
  j = 35 
  i4a(i) = ishft(i4b(i), j)
enddo

do i=1,10
  j = 35 
  if (i4a(i) .ne. (ishft(i4b(i), j )) ) goto 20
enddo
!
do i=1,10
  j = 65 
  i8a(i) = ishft(i8b(i), j)
enddo

do i=1,10
  j = 65 
  if (i8a(i) .ne. (ishft(i8b(i), j )) ) goto 20
enddo


!
!
do i=1,10
  j = -10 
  i1a(i) = ishft(i1b(i), j)
enddo

do i=1,10
  j = -10 
  if (i1a(i) .ne. (ishft(i1b(i), j)) ) goto 20
enddo
!
do i=1,10
  j = -20 
  i2a(i) = ishft(i2b(i), j)
enddo

do i=1,10
  j = -20 
  if (i2a(i) .ne. (ishft(i2b(i), j )) ) goto 20
enddo
!
do i=1,10
  j = -35 
  i4a(i) = ishft(i4b(i), j)
enddo

do i=1,10
  j = -35 
  if (i4a(i) .ne. (ishft(i4b(i), j )) ) goto 20
enddo
!
do i=1,10
  j = -65 
  i8a(i) = ishft(i8b(i), j)
enddo

do i=1,10
  j = -65 
  if (i8a(i) .ne. (ishft(i8b(i), j )) ) goto 20
enddo

write(6,*) ' OK '
goto 30
20 write(6,*) ' NG '
write(6,*) i1a
write(6,*) i2a
write(6,*) i4a
write(6,*) i8a
30 continue
end


