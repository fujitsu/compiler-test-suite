  integer,parameter :: inum=1
  integer :: vnum=1
  real,dimension(5,5,5) :: rdata, res

  rdata=1.0
  res=0.0

  write(70) rdata
  FLUSH(UNIT=70,IOSTAT=ios)
  if(ios .ne. 0) write(6,*) "NG"
  rewind 70
  read(70) res
  close(70)

  rdata=rdata+res

  write(71) rdata
  FLUSH(70+1,IOSTAT=ios)
  if(ios .ne. 0) write(6,*) "NG"
  rewind 71
  read(71) res
  close(71)

  rdata=rdata+res

  write(72) rdata
  FLUSH(IOSTAT=ios,UNIT=70+1+inum)
  if(ios .ne. 0) write(6,*) "NG"
  rewind 72
  read(72) res
  close(72)

  rdata=rdata+res

  write(73) rdata
  FLUSH(ERR=99,UNIT=vnum+70+1+inum)
  rewind 73
  read(73) res
  close(73)

  do i=1,5
   do j=1,5
    do k=1,5
     if(res(i,j,k) .ne. rdata(i,j,k)) write(6,*) "NG"
    end do
   end do
  end do

  print *,'pass'
  stop

99 write(6,*) "NG"
  stop 99
  end
