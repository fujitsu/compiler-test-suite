 call s1
 print *,'pass'
 end
 subroutine s1
 character(2),dimension(2,3)::a1='12',a2='12',a3='12',a4='12'
 character(2),dimension(2,3)::c1='12',c2='12',c3='12',c4='12'
 integer::k1=1,k2=2
 pointer (u1,p1);pointer (u2,p2)
 character:: p1,p2,pp
 pp='x'
 do i1=0,1
 do i2=0,1
 do i3=0,1
 do i4=0,1
   c1='12';if (i1==1)c1='ab'
   c2='12';if (i2==1)c2='ab'
   c3='12';if (i3==1)c3='ab'
   c4='12';if (i4==1)c4='ab'
   a1='12';if (i1==1)a1='ab'
   a2='12';if (i2==1)a2='ab'
   a3='12';if (i3==1)a3='ab'
   a4='12';if (i4==1)a4='ab'
   u1=loc(pp); u2=loc(pp)
   j=0;       if (i1==i2)j=j+1     ; if (i1==i3.and.i2==i4)j=j+2 ; if (i1==i3.and.i2==i4)j=j+4
i=0; call ss1             ;if (i.ne.j)print *,'fail'
i=0; call ss2(a1,a2,a3,a4);if (i.ne.j)print *,'fail'
i=0; call ss3             ;if (i.ne.j)print *,'fail'
i=0; call ss4(a1,a2,a3,a4);if (i.ne.j)print *,'fail'
i=0; call ss5             ;if (i.ne.j)print *,'fail'
i=0; call ss6(a1,a2,a3,a4);if (i.ne.j)print *,'fail'
i=0; call ss7             ;if (i.ne.j)print *,'fail'
i=0; call ss8(a1,a2,a3,a4);if (i.ne.j)print *,'fail'
i=0; call ss9             ;if (i.ne.j)print *,'fail'
i=0; call ssa(a1,a2,a3,a4);if (i.ne.j)print *,'fail'
i=0; call ssb             ;if (i.ne.j)print *,'fail'
i=0; call ssc(a1,a2,a3,a4);if (i.ne.j)print *,'fail'
end do;enddo;end do;end do
 contains
 subroutine ss1
 if (any(c1.eq.c2).and.p1=='x')i=i+1 
 if (any(c1//c2.eq.c3//c4).and.p2=='x')i=i+2 
 if (any(c1//c1//c2.eq.c3//c3//c4).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss2(d1,d2,d3,d4)
 character*(*),dimension(2,3):: d1,d2,d3,d4
 if (any(d1.eq.d2).and.p1=='x')i=i+1 
 if (any(d1//d2.eq.d3//d4).and.p2=='x')i=i+2 
 if (any(d1//d1//d2.eq.d3//d3//d4).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss3
 if (any(c1.eq.c2).and.p1=='x')i=i+1 
 if (any(c1//c2.eq.c3//c4).and.p2=='x')i=i+2 
 if (any(c1//c2//c1.eq.c3//c4//c1).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss4(d1,d2,d3,d4)
 character*(*),dimension(2,3):: d1,d2,d3,d4
 if (any(d1.eq.d2).and.p1=='x')i=i+1 
 if (any(d1//d2.eq.d3//d4).and.p2=='x')i=i+2 
 if (any(d1//d2//d1.eq.d3//d4//d1).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss5
 if (any(c1.eq.c2).and. &
     any(c1.eq.c2).and.p1=='x')i=i+1 
 if (any(c1//c2.eq.c3//c4).and. &
     any(c1//c2.eq.c3//c4).and.p2=='x')i=i+2 
 if (any(c1//c2//c1.eq.c3//c4//c1).and. &
     any(c1//c2//c1.eq.c3//c4//c1).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss6(d1,d2,d3,d4)
 character*(*),dimension(2,3):: d1,d2,d3,d4
 if (any(d1.eq.d2).and.&  
     any(d1.eq.d2).and.p1=='x')i=i+1 
 if (any(d1//d2.eq.d3//d4).and.   &
     any(d1//d2.eq.d3//d4).and.p2=='x')i=i+2 
 if (any(d1//d2//d1.eq.d3//d4//d1).and.   &
     any(d1//d2//d1.eq.d3//d4//d1).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss7
 if (any(adjustl(c1).eq.adjustl(c2)).and.p1=='x')i=i+1 
 if (any(adjustl(c1//c2).eq.adjustl(c3//c4)).and.p2=='x')i=i+2 
 if (any(adjustl(c1//c1//c2).eq.adjustl(c3//c3//c4)).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss8(d1,d2,d3,d4)
 character*(*),dimension(2,3):: d1,d2,d3,d4
 if (any(adjustl(d1).eq.adjustl(d2)).and.p1=='x')i=i+1 
 if (any(adjustl(d1//d2).eq.adjustl(d3//d4)).and.p2=='x')i=i+2 
 if (any(adjustl(d1//d2//d2).eq.adjustl(d3//d4//d4)).and.p2=='x')i=i+4 
 end subroutine
 subroutine ss9
 if (any(adjustl(c1).eq.adjustl(c2)).and.p1=='x')i=i+1 
 if (any(adjustl(c1//c2).eq.adjustl(c3)//c4).and.p2=='x')i=i+2 
 if (any(adjustl(c1//c2//c2).eq.adjustl(c3)//c4//c4).and.p2=='x')i=i+4 
 end subroutine
 subroutine ssa(d1,d2,d3,d4)
 character*(*),dimension(2,3):: d1,d2,d3,d4
 if (any(adjustl(d1).eq.adjustl(d2)).and.p1=='x')i=i+1 
 if (any(adjustl(d1)//d2.eq.d3//adjustl(d4)).and.p2=='x')i=i+2 
 if (any(adjustl(d1)//d2//d2.eq.d3//adjustl(d4)//d2).and.p2=='x')i=i+4 
 end subroutine
 subroutine ssb
 if (any(adjustl(c1).eq.adjustl(c2)).and. &
     any(adjustl(c1).eq.adjustl(c2)).and.p1=='x')i=i+1 
 if (any(c1//adjustl(c2).eq.adjustl(c3)//adjustl(c4)).and. &
     any(adjustl(c1)//c2.eq.adjustl(c3)//c4).and.p2=='x')i=i+2 
 if (any(c1//adjustl(c2)//c2.eq.adjustl(c3)//adjustl(c4)//c2).and. &
     any(adjustl(c1)//c2//c2.eq.adjustl(c3)//c4//c2).and.p2=='x')i=i+4 
 end subroutine
 subroutine ssc(d1,d2,d3,d4)
 character*(*),dimension(2,3):: d1,d2,d3,d4
 if (any(adjustl(d1).eq.adjustl(d2)).and.&  
     any(d1.eq.adjustl(d2)).and.p1=='x')i=i+1 
 if (any(adjustl(d1)//adjustl(d2).eq.adjustl(d3//d4)).and.   &
     any(d1//adjustl(d2).eq.adjustl(d3)//d4).and.p2=='x')i=i+2 
 if (any(adjustl(d1)//adjustl(d2)//d1.eq.adjustl(d3//d4//d1)).and.   &
     any(d1//adjustl(d2)//d1.eq.adjustl(d3)//d4//d1).and.p2=='x')i=i+4 
 end subroutine
end
