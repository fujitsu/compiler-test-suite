do k=1,10
  block 
    if (k==3) exit
  end block
  write(1,*)k
end do
rewind 1
read(1,*) kk;if (kk/=1) print *,201
read(1,*) kk;if (kk/=2) print *,202
read(1,*,end=1)
print *,2001
1 continue
k=1
do while (k/=10)
  block 
    if (k==3) exit
  end block
  write(2,*)k
  k=k+1
end do
rewind 2
read(2,*) kk;if (kk/=1) print *,211
read(2,*) kk;if (kk/=2) print *,212
read(2,*,end=2)
print *,2002
2 continue
print *,'pass'
end
