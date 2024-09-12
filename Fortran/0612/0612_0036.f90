	subroutine sub(r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13 &
	,r14,r15,r16,r17,r18,r19,r20)
	real*8,value::r1,r2,r3,r4,r5,r6,r7,r8,r9,r11,r12,r13 &
	,r14,r15,r16,r17,r18,r19,r20
	integer*4,value:: r10
	if( r1 == 1 .and. r2 == 2 .and. r3 == 3 .and. & 
	    r4 == 4 .and. r5 == 5 .and. r6 == 6 .and. & 
	    r7 == 7 .and. r8 == 8 .and. r9 == 9 .and. & 
	    r10 == 10 .and. r11 == 11 .and. r12 == 12 .and. & 
	    r13 == 13 .and. r14 == 14 .and. r15 == 15 .and. & 
	    r16 == 16 .and. r17 == 17 .and. r18 == 18 .and. & 
	    r19 == 19 .and. r20 == 20 ) then
         print *,'PASS'
        else
         print *,'NG'
	endif
	end
        interface
	subroutine sub(r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13 &
	,r14,r15,r16,r17,r18,r19,r20)
	real*8,value::r1,r2,r3,r4,r5,r6,r7,r8,r9,r11,r12,r13 &
	,r14,r15,r16,r17,r18,r19,r20
	integer*4,value:: r10
	end subroutine
        end interface
	call sub(%val(1.0_8),%val(2.0_8),%val(3.0_8),%val(4.0_8), &
	%val(5.0_8),%val(6.0_8),%val(7.0_8),%val(8.0_8),%val(9.0_8), &
	%val(10_4),%val(11.0_8),%val(12.0_8),%val(13.0_8),%val(14.0_8), &
	%val(15.0_8),%val(16.0_8),%val(17.0_8),%val(18.0_8),%val(19.0_8), &
	%val(20.0_8))
	end
