 call s1
 print *,'pass'
 end
 subroutine s1
  call ss1
 end
 subroutine ss1
  character*(*),parameter::a1='12',a2='34',a3='56'
  character*2 cf(3)/'12','34','56'/
  integer ja(2)/3,1/
  character*2    r(3),rr*4
  character*4    n
  r='';read (cf(1:3),'(a)') r(1:3);if (any(r(1:3)/=(/a1,a2,a3/)))print *,'fail'
  r='';  read (cf(ja(1)),'(a)') r(1);  read (cf(ja(2)),'(a)') r(2); if (any(r(1:2)/=(/a3,a1/)))print *,'fail'
  n = cf(ja(1))//cf(ja(2))
  r='';read (n,'(a)') rr;if (rr/=a3//a1)print *,'fail'
  r='';read (cx(),'(a)') r(1:3);if (any(r(1:3)/=(/a1,a2,a3/)))print *,'fail'
   contains
     function cx() result(r)
       character*2 ,dimension(3)::r
       r=cf
     end function
end
