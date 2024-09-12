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
k=1
30 continue
  aa:block 
    if (k/=3) exit aa
     goto 40
  end block aa
  write(3,*)k
  k=k+1
goto 30
40 continue
rewind 3
read(3,*) kk;if (kk/=1) print *,221
read(3,*) kk;if (kk/=2) print *,222
read(3,*,end=3)
print *,2003
3 continue
print *,'pass'
end
