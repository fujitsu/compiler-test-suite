  call s1
  print *,'pass'
  end
  subroutine s1
  a=2.e-11
  a1=a/10.
  a2=a*10.
  a3=a/2.
  write(1,'(f6.2)') a
  write(1,'(f6.2)') a1
  write(1,'(f6.2)') a2
  write(1,'(f6.2)') a3
  write(1,*) a
  write(1,*) a1
  write(1,*) a2
  write(1,*) a3
  rewind 1
  read(1,*) x;if (x/=0.)write(6,*) "NG"
  read(1,*) x;if (x/=0.)write(6,*) "NG"
  read(1,*) x;if (x/=0.)write(6,*) "NG"
  read(1,*) x;if (x/=0.)write(6,*) "NG"
  read(1,*) x;if (abs(x-2.e-11)>0.001)write(6,*) "NG"
  read(1,*) x;if (abs(x-2.e-12)>0.001)write(6,*) "NG"
  read(1,*) x;if (abs(x-2.e-10)>0.001)write(6,*) "NG"
  read(1,*) x;if (abs(x-2.e-12)>0.001)write(6,*) "NG"
  end
