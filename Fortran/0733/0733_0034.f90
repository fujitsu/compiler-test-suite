integer ::a(1,1)=1
character*7 ::d(1,1)=reshape((/"17S%=AI"/),(/1,1/))
  write(20,*) a *index(d,'&')
rewind 20
read(20,*) k;if (k/=0)write(6,*) "NG"
print *,'pass'
END
