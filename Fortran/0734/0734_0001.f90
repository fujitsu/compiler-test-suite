 real, dimension(:), pointer :: a
 n = 100000
 allocate (a(n))
write(1,*)100000
 a = (/(i,i=1,100000) /)
write(1,*)100000
call chk
end
subroutine chk
write(2,*)100,100,10
rewind 1
rewind 2
read(2,*)j1,j2,j3
read(1,*)k1; if( k1/= j1*j2*j3) print *,'error-1'
read(1,*)k1; if( k1/= j1*j2*j3) print *,'error-2'
print *,'pass'
end
