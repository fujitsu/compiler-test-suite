subroutine s1
 integer,allocatable::a(:); integer::b(2)=1
allocate( a(2) )
 write(1,*) shape( a )
write(2,'( z16.16 )' ) loc(a)
a = b
write(2,'( z16.16 )' ) loc(a)
 write(1,*)shape( a )

end
character(16):: x1,x2
call s1
rewind 1
read(1,*) n ;if (n/=2) print *,101
read(1,*) n ;if (n/=2) print *,102
rewind 2
read(2,*) x1 
read(2,*) x2 ;if (x1/=x2) print *,103

print *,'pass'
end
