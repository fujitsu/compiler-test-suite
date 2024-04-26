call test()
print *,'pass'
end
subroutine test()
character (len=10), dimension (10) :: string
string(3:8)(2:4) = 'abc'
if ( string(3)(2:4) .ne. 'abc')print *,'err'
if ( string(4)(2:4) .ne. 'abc')print *,'err'
if ( string(5)(2:4) .ne. 'abc')print *,'err'
if ( string(6)(2:4) .ne. 'abc')print *,'err'
if ( string(7)(2:4) .ne. 'abc')print *,'err'
if ( string(8)(2:4) .ne. 'abc')print *,'err'
end
