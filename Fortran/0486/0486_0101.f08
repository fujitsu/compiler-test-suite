subroutine s1
 integer,allocatable::a(:); integer::b(3)=1
allocate( a(2) )
 write(1,*) shape( a )
a = b
 write(1,*)shape( a )

end
call s1
rewind 1
read(1,*) n ;if (n/=2) print *,101
read(1,*) n ;if (n/=3) print *,102

print *,'pass'
end
