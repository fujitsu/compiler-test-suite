interface g
  subroutine s1(a)
  end subroutine
  subroutine s2(k)
  end subroutine
end interface
interface g
  subroutine s3()
  end subroutine
  subroutine s4(k,a)
  end subroutine
end interface

call g(1.0)
call g(2  )
call g(   )
call g(2,1.0  )
rewind 1
read(1,*) k;if (k/=1) print *,101
read(1,*) k;if (k/=2) print *,102
read(1,*) k;if (k/=3) print *,103
read(1,*) k;if (k/=4) print *,104
print *,'pass'
end
  subroutine s1(a)
write(1,*) 1
  end subroUtine
  subroutine s2(k)
write(1,*) 2
  end subroutine
  subroutine s3()
write(1,*) 3
  end subroutine
  subroutine s4(k,a)
write(1,*) 4
  end subroutine
