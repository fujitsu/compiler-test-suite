program main
  real DIR, IDIR
  equivalence (DIR, IDIR)
  character*100 c
  write(9,'(a)')'3EBDFB30'
  rewind 9
  read (9,'(z11)') idir
  write(10,*)"('DIR hex = ', z8,', DIR decimal =', f9.6)", dir, dir
  write(10,*) 'COS(dir) =', cos(dir)
rewind 10
read(10,'(a)') c;if (index(c,'DIR hex ')==0)print *,'error1'
read(10,'(a)') c;if (index(c,'COS(dir)')==0)print *,'error2'
print *,'pass'
end program main
