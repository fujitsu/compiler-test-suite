call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
real(4)::r41,r42
real(8)::r81,r82
real(16)::r161,r162

r41=3.0
r81=3.0_8
r161=3.0_16
r42=4.0
r82=4.0_8
r162=4.0_16

if(hypot(r41,r42)/=5.0) print *,'err1'
if(hypot(r81,r82)/=5.0_8) print *,'err2'
if(hypot(r161,r162)/=5.0_16) print *,'err3'
if(hypot(r41,r82)/=5.0_8) print *,'err4'
if(hypot(r41,r162)/=5.0_16) print *,'err5'
if(hypot(r81,r42)/=5.0_8) print *,'err6'
if(hypot(r161,r42)/=5.0_16) print *,'err7'

end subroutine
subroutine s2
real(4)::r41,r42
real(8)::r81,r82
real(16)::r161,r162

r41=3.0
r81=3.0_8
r161=3.0_16
r42=4.0
r82=4.0_8
r162=4.0_16

if(hypot(x=r41,y=r42)/=5.0) print *,'err11'
if(hypot(x=r81,y=r82)/=5.0_8) print *,'err12'
if(hypot(x=r161,y=r162)/=5.0_16) print *,'err13'
if(hypot(x=r41,y=r82)/=5.0_8) print *,'err14'
if(hypot(x=r41,y=r162)/=5.0_16) print *,'err15'
if(hypot(x=r81,y=r42)/=5.0_8) print *,'err16'
if(hypot(x=r161,y=r42)/=5.0_16) print *,'err17'

end subroutine
subroutine s3
real(4)::r41(1),r42(1)
real(8)::r81(1),r82(1)
real(16)::r161(1),r162(1)

r41=3.0
r81=3.0_8
r161=3.0_16
r42=4.0
r82=4.0_8
r162=4.0_16

if(any(hypot(r41,r42)/=[5.0])) print *,'err21'
if(any(hypot(r81,r82)/=[5.0_8])) print *,'err22'
if(any(hypot(r161,r162)/=[5.0_16])) print *,'err23'
if(any(hypot(r41,r82)/=[5.0_8])) print *,'err24'
if(any(hypot(r41,r162)/=[5.0_16])) print *,'err25'
if(any(hypot(r81,r42)/=[5.0_8])) print *,'err26'
if(any(hypot(r161,r42)/=[5.0_16])) print *,'err27'

end subroutine
end
