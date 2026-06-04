  integer,parameter :: inum=1
  integer :: vnum=1
  real,dimension(5,5,5) :: rdata, res

  rdata=1.0
  res=0.0

  write(60) rdata
  FLUSH(60)
  rewind 60
  read(60) res
  close(60)

  rdata=rdata+res

  write(61) rdata
  FLUSH(60+1)
  rewind 61
  read(61) res
  close(61)

  rdata=rdata+res

  write(62) rdata
  FLUSH(60+1+inum)
  rewind 62
  read(62) res
  close(62)

  rdata=rdata+res

  write(63) rdata
  FLUSH(vnum+60+1+inum)
  rewind 63
  read(63) res
  close(63)

  do i=1,5
   do j=1,5
    do k=1,5
     if(res(i,j,k) .ne. rdata(i,j,k)) write(6,*) "NG"
    end do
   end do
  end do

  print *,'pass'
  end
