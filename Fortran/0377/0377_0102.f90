call test01()
print *,"pass"
end

subroutine test01()
integer ,parameter :: vcc= z"7ffffffe" 
enum, bind(c) 
 enumerator :: aa=-1
 enumerator :: cc=vcc
 enumerator :: bb 
end enum
enum, bind(c) 
 enumerator :: aa2=-1
 enumerator :: cc2=cc+int(0)
 enumerator :: bb2
 enumerator :: cc3= cc2
end enum

if (aa.ne.-1) print *,'fail'
if (cc.ne.vcc) print *,'fail'
if (bb.ne.vcc+1) print *,'fail'
if (aa2.ne.-1) print *,'fail'
if (cc2.ne.vcc) print *,'fail'
if (cc3.ne.vcc) print *,'fail'
if (bb2.ne.vcc+1) print *,'fail'
end
