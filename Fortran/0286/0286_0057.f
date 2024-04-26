!
	subroutine test2(c,i)
	character*2 c
	if( c .eq. 'ab' ) then
	  print *,'OK',i
        endif
	end
!
	subroutine test3(c,i)
	character*3 c
	if( c .eq. 'abc' ) then
	  print *,'OK',i
        endif
	end
	program main
	call test2('aa',1)
	call test2('ab',2)
	call test2('ba',3)
	call test2('bb',4)
	call test3('aaa',1)
	call test3('aab',2)
	call test3('aac',3)
	call test3('aba',4)
	call test3('abb',5)
	call test3('abc',6)
	call test3('aca',7)
	call test3('acb',8)
	call test3('acc',9)
	call test3('baa',10)
	call test3('bab',11)
	call test3('bac',12)
	call test3('bba',13)
	call test3('bbb',14)
	call test3('bbc',15)
	call test3('bca',16)
	call test3('bcb',17)
	call test3('bcc',18)
	call test3('caa',19)
	call test3('cab',20)
	call test3('cac',21)
	call test3('cba',22)
	call test3('cbb',23)
	call test3('cbc',24)
	call test3('cca',25)
	call test3('ccb',26)
	call test3('ccc',27)
	print *,'pass'
	end 
