         subroutine sub(i1,i2,i3,i4,i5,r)
         real*8,value::r
	 if( r /= 10.0 )then
	   print *,'NG1:',r
	 endif
	 if( i1+i2+i3+i4+i5 /= 1+2+3+4+5 )then
	   print *,'NG2:',r
	 endif
         end
         interface
         subroutine sub(i1,i2,i3,i4,i5,r)
         real*8,value::r
         end subroutine
         end interface
	 real*8 r
	 r = 10.0
	 call sub(1,2,3,4,5,%val(r+0.0))
	 call sub(1,2,3,4,5,%val(10.0d0))
	 call sub(1,2,3,4,5,%val(r))
	 print *,'PASS'
	 end
