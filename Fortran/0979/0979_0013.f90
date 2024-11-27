  integer,parameter :: inum=1
  integer :: vnum=1
  real,dimension(5,5,5) :: rdata, res
  
  rdata=1.0
  res=0.0

  write(50) rdata
  FLUSH 50
  rewind 50
  read(50) res
  close(50)

  rdata=rdata+res

  write(51) rdata
  FLUSH 50+1
  rewind 51
  read(51) res
  close(51)

  rdata=rdata+res

  write(52) rdata
  FLUSH 50+1+inum
  rewind 52
  read(52) res
  close(52)

  rdata=rdata+res

  write(53) rdata
  FLUSH vnum+50+1+inum
  rewind 53
  read(53) res
  close(53)

  do i=1,5
   do j=1,5
    do k=1,5
     if(res(i,j,k) .ne. rdata(i,j,k)) write(6,*) "NG"
    end do
   end do
  end do

  print *,'pass'
  end
