subroutine s1
type x;integer,allocatable:: a(:) ; end type 
        type ( x ):: y , z ; allocate( y%a(2) , z%a(30) )

z%a=1
write( 1,'(z16.16)') loc ( y%a )
write( 2,*         ) shape ( y%a )

     y = z

write( 1,'(z16.16)') loc ( y%a )
write( 2,*         ) shape ( y%a )

end
call s1
rewind 2
read (2,*) n1
read (2,*) n2
if (n1/=2) print *,101
if (n2/=30) print *,102

print *,'pass'
end
