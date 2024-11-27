program main
  real DIR, IDIR
  equivalence (DIR, IDIR)
  character*100 c
  write(1,'(a)')'3EBDFB30'
  rewind 1
  read (1,'(z11)') idir
  write(2,*)"('DIR hex = ', z8,', DIR decimal =', f9.6)", dir, dir
  write(2,*) 'COS(dir) =', cos(dir)
rewind 2
read(2,'(a)') c;if (index(c,'DIR hex ')==0)print *,'error1'
read(2,'(a)') c;if (index(c,'COS(dir)')==0)print *,'error2'
print *,'pass'
end program main
