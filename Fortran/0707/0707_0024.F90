 call s1
 print *,'pass'
 end
 subroutine s1
 character(2)::a1='12',a2='12',a3='12',a4='12'
 character(2)::cc1='12',cc2='12',cc3='12',cc4='12'
 character(2)::c1,c2,c3,c4
 pointer (ic1,c1); pointer (ic2,c2); pointer (ic3,c3); pointer (ic4,c4)
 integer::k1=1,k2=2
 pointer (u1,p1);pointer (u2,p2)
 character p1,p2,pp
 integer(8) ia1,ia2,ia3,ia4
 ia1=loc(a1); ia2=loc(a2); ia3=loc(a3); ia4=loc(a4)
 ic1=loc(cc1); ic2=loc(cc2); ic3=loc(cc3); ic4=loc(cc4)
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
   u1=0;u2=0; if (i1==i2)u1=loc(pp); if (i1==i3.and.i2==i4)u2=loc(pp)
   j=0;       if (i1==i2)j=j+1     ; if (i1==i3.and.i2==i4)j=j+2
i=0; call ss1             ;if (i.ne.j)print *,'fail'
i=0; call ss2(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
i=0; call ss3             ;if (i.ne.j)print *,'fail'
i=0; call ss4(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
i=0; call ss5             ;if (i.ne.j)print *,'fail'
i=0; call ss6(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
i=0; call ss7             ;if (i.ne.j)print *,'fail'
i=0; call ss8(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
i=0; call ss9             ;if (i.ne.j)print *,'fail'
i=0; call ssa(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
i=0; call ssb             ;if (i.ne.j)print *,'fail'
i=0; call ssc(ia1,ia2,ia3,ia4);if (i.ne.j)print *,'fail'
end do;enddo;end do;end do
 contains
 subroutine ss1
 if (c1.eq.c2) i=i+1 
 if (c1//c2.eq.c3//c4) i=i+2 
 end subroutine
 subroutine ss2(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2) i=i+1 
 if (d1//d2.eq.d3//d4) i=i+2 
 end subroutine
 subroutine ss3
 if (c1(k1:k2).eq.c2(k1:k2)) i=i+1 
 if (c1(k1:k2)//c2(k1:k2).eq.c3(k1:k2)//c4(k1:k2)) i=i+2 
 end subroutine
 subroutine ss4(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1(k1:k2).eq.d2(k1:k2)) i=i+1 
 if (d1(k1:k2)//d2(k1:k2).eq.d3(k1:k2)//d4(k1:k2)) i=i+2 
 end subroutine
 subroutine ss5
 if (c1(k1:k2).eq.c2(k1:k2).and. &
     c1(k1:k2).eq.c2(k1:k2)) i=i+1 
 if (c1(k1:k2)//c2(k1:k2).eq.c3(k1:k2)//c4(k1:k2).and. &
     c1(k1:k2)//c2(k1:k2).eq.c3(k1:k2)//c4(k1:k2)) i=i+2 
 end subroutine
 subroutine ss6(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1(k1:k2).eq.d2(k1:k2).and.&  
     d1(k1:k2).eq.d2(k1:k2)) i=i+1 
 if (d1(k1:k2)//d2(k1:k2).eq.d3(k1:k2)//d4(k1:k2).and.   &
     d1(k1:k2)//d2(k1:k2).eq.d3(k1:k2)//d4(k1:k2)) i=i+2 
 end subroutine
 subroutine ss7
 if (adjustl(c1).eq.adjustl(c2)) i=i+1 
 if (adjustl(c1//c2).eq.adjustl(c3//c4)) i=i+2 
 end subroutine
 subroutine ss8(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (adjustl(d1).eq.adjustl(d2)) i=i+1 
 if (adjustl(d1//d2).eq.adjustl(d3//d4)) i=i+2 
 end subroutine
 subroutine ss9
 if (adjustl(c1(k1:k2)).eq.adjustl(c2(k1:k2))) i=i+1 
 if (adjustl(c1(k1:k2)//c2(k1:k2)).eq.adjustl(c3(k1:k2))//c4(k1:k2)) i=i+2 
 end subroutine
 subroutine ssa(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (adjustl(d1(k1:k2)).eq.adjustl(d2(k1:k2))) i=i+1 
 if (adjustl(d1(k1:k2))//d2(k1:k2).eq.d3(k1:k2)//adjustl(d4(k1:k2))) i=i+2 
 end subroutine
 subroutine ssb
 if (adjustl(c1(k1:k2)).eq.adjustl(c2(k1:k2)).and. &
     adjustl(c1(k1:k2)).eq.adjustl(c2(k1:k2))) i=i+1 
 if (c1(k1:k2)//adjustl(c2(k1:k2)).eq.adjustl(c3(k1:k2))//adjustl(c4(k1:k2)).and. &
     adjustl(c1(k1:k2))//c2(k1:k2).eq.adjustl(c3(k1:k2))//c4(k1:k2)) i=i+2 
 end subroutine
 subroutine ssc(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (adjustl(d1(k1:k2)).eq.adjustl(d2(k1:k2)).and.&  
     d1(k1:k2).eq.adjustl(d2(k1:k2))) i=i+1 
 if (adjustl(d1(k1:k2))//adjustl(d2(k1:k2)).eq.adjustl(d3(k1:k2)//d4(k1:k2)).and.   &
     d1(k1:k2)//adjustl(d2(k1:k2)).eq.adjustl(d3(k1:k2))//d4(k1:k2)) i=i+2 
 end subroutine
end
