 call s1
 print *,'pass'
 end
 subroutine s1
 complex(16)::a1=2,a2=2,a3=2,a4=2
 complex(16)::cc1=2,cc2=2,cc3=2,cc4=2
 complex(16)::c1,c2,c3,c4
 pointer (ic1,c1); pointer (ic2,c2); pointer (ic3,c3); pointer (ic4,c4)
 integer::k1=1,k2=2
 pointer (u1,p1);pointer (u2,p2)
 complex(16)p1,p2,pp
 integer(8) ia1,ia2,ia3,ia4
 ia1=loc(a1); ia2=loc(a2); ia3=loc(a3); ia4=loc(a4)
 ic1=loc(cc1); ic2=loc(cc2); ic3=loc(cc3); ic4=loc(cc4)
 pp=-8
 do i1=0,1
 do i2=0,1
 do i3=0,1
 do i4=0,1
   c1=2;if (i1==1)c1=4
   c2=2;if (i2==1)c2=4
   c3=2;if (i3==1)c3=4
   c4=2;if (i4==1)c4=4
   a1=2;if (i1==1)a1=4
   a2=2;if (i2==1)a2=4
   a3=2;if (i3==1)a3=4
   a4=2;if (i4==1)a4=4
   u1=0;u2=0; if (i1==i2)u1=loc(pp); if (i1==i3.and.i2==i4)u2=loc(pp)
   j=0;       if (i1==i2)j=j+1     ; if (i1==i3.and.i2==i4)j=j+2
i=0; call ss1             ;if (i.ne.j)print *,'fail'
i=0; call ss2(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
i=0; call ss3             ;if (i.ne.j)print *,'fail'
i=0; call ss4(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
i=0; call ss5             ;if (i.ne.j)print *,'fail'
i=0; call ss6(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
end do;enddo;end do;end do
 contains
 subroutine ss1
 if (c1.eq.c2) i=i+1 
 if (c1.eq.c3.and. &
     c2.eq.c4) i=i+2 
 end subroutine
 subroutine ss2(id1,id2,id3,id4)
 complex(16) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2) i=i+1 
 if (d1.eq.d3.and.&
     d2.eq.d4) i=i+2 
 end subroutine
 subroutine ss3
 if (c1.eq.c2) i=i+1 
 if (c1.eq.c3.and. &
     c2.eq.c4) i=i+2 
 end subroutine
 subroutine ss4(id1,id2,id3,id4)
 complex(16) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2) i=i+1 
 if (d1.eq.d3.and. &
     d2.eq.d4) i=i+2 
 end subroutine
 subroutine ss5
 if (c1.eq.c2.and. &
     c1.eq.c2) i=i+1 
 if (c1.eq.c3.and. &
     c2.eq.c4.and. &
     c1.eq.c3.and. &
     c2.eq.c4) i=i+2 
 end subroutine
 subroutine ss6(id1,id2,id3,id4)
 complex(16) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2.and.&  
     d1.eq.d2) i=i+1 
 if (d1.eq.d3.and.   &
     d2.eq.d4.and.   &
     d1.eq.d3.and.   &
     d2.eq.d4) i=i+2 
 end subroutine
end
