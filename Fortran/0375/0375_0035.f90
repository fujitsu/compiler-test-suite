subroutine s1
call cs1
end
subroutine s2
interface
subroutine cs2() bind(c,name='_CS22')
end subroutine
end interface
call cs2
end
subroutine s3
interface
subroutine cs3() bind(c,name='_CS33')
end subroutine
end interface
call cs3
end
subroutine s4
interface
subroutine cs4() bind(c,name='_CS44')
end subroutine
end interface
call cs4
end
subroutine ts1
end subroutine
subroutine ts2() bind(c,name='_TS22')
end subroutine
subroutine ts3() bind(c,name='_TS33')
end subroutine
subroutine ts4
end subroutine
interface
subroutine ts1
end subroutine
subroutine ts2() bind(c,name='_TS22')
end subroutine
subroutine ts3() bind(c,name='_TS33')
end subroutine
subroutine ts4
end subroutine
end interface
call s1
call s2
call s3
call s4
call ts1
call ts2
call ts3
call ts4
print *,'pass'
end
subroutine cs1
end subroutine
subroutine cs2() bind(c,name='_CS22')
end subroutine
subroutine cs3() bind(c,name='_CS33')
end subroutine
subroutine cs4() bind(c,name='_CS44')
end subroutine
