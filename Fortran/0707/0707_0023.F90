 call s1
 print *,'pass'
 end
 subroutine s1
 character(2)::a1='12',a2='12',a3='12',a4='12'
 character(2)::cc1='12',cc2='12',cc3='12',cc4='12'
 character(2)::c1,c2,c3,c4
 pointer (ic1,c1); pointer (ic2,c2); pointer (ic3,c3); pointer (ic4,c4)
  integer(8) ia1,ia2,ia3,ia4
 integer::k1=1,k2=2
 ia1=loc(a1); ia2=loc(a2); ia3=loc(a3); ia4=loc(a4)
 ic1=loc(cc1); ic2=loc(cc2); ic3=loc(cc3); ic4=loc(cc4)
 call ss1
 call ss2(ia1,ia2,ia3,ia4)
 call ss3
 call ss4(ia1,ia2,ia3,ia4)
 call ss5
 call ss6(ia1,ia2,ia3,ia4)
 call ss7
 call ss8(ia1,ia2,ia3,ia4)
 call ss9
 call ssa(ia1,ia2,ia3,ia4)
 call ssb
 call ssc(ia1,ia2,ia3,ia4)
 contains
 subroutine ss1
 if (c1.eq.c2) i=i+1 
 if (c1//c2.eq.c3//c4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss2(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2) i=i+1 
 if (d1//d2.eq.d3//d4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss3
 if (c1(k1:k2).eq.c2(k1:k2)) i=i+1 
 if (c1(k1:k2)//c2(k1:k2).eq.c3(k1:k2)//c4(k1:k2)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss4(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1(k1:k2).eq.d2(k1:k2)) i=i+1 
 if (d1(k1:k2)//d2(k1:k2).eq.d3(k1:k2)//d4(k1:k2)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss5
 if (c1(k1:k2).eq.c2(k1:k2).and. &
     c1(k1:k2).eq.c2(k1:k2)) i=i+1 
 if (c1(k1:k2)//c2(k1:k2).eq.c3(k1:k2)//c4(k1:k2).and. &
     c1(k1:k2)//c2(k1:k2).eq.c3(k1:k2)//c4(k1:k2)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss6(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1(k1:k2).eq.d2(k1:k2).and.&  
     d1(k1:k2).eq.d2(k1:k2)) i=i+1 
 if (d1(k1:k2)//d2(k1:k2).eq.d3(k1:k2)//d4(k1:k2).and.   &
     d1(k1:k2)//d2(k1:k2).eq.d3(k1:k2)//d4(k1:k2)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss7
 if (adjustl(c1).eq.adjustl(c2)) i=i+1 
 if (adjustl(c1//c2).eq.adjustl(c3//c4)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss8(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (adjustl(d1).eq.adjustl(d2)) i=i+1 
 if (adjustl(d1//d2).eq.adjustl(d3//d4)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss9
 if (adjustl(c1(k1:k2)).eq.adjustl(c2(k1:k2))) i=i+1 
 if (adjustl(c1(k1:k2)//c2(k1:k2)).eq.adjustl(c3(k1:k2))//c4(k1:k2)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ssa(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (adjustl(d1(k1:k2)).eq.adjustl(d2(k1:k2))) i=i+1 
 if (adjustl(d1(k1:k2))//d2(k1:k2).eq.d3(k1:k2)//adjustl(d4(k1:k2))) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ssb
 if (adjustl(c1(k1:k2)).eq.adjustl(c2(k1:k2)).and. &
     adjustl(c1(k1:k2)).eq.adjustl(c2(k1:k2))) i=i+1 
 if (c1(k1:k2)//adjustl(c2(k1:k2)).eq.adjustl(c3(k1:k2))//adjustl(c4(k1:k2)).and. &
     adjustl(c1(k1:k2))//c2(k1:k2).eq.adjustl(c3(k1:k2))//c4(k1:k2)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ssc(id1,id2,id3,id4)
 character*(2) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (adjustl(d1(k1:k2)).eq.adjustl(d2(k1:k2)).and.&  
     d1(k1:k2).eq.adjustl(d2(k1:k2))) i=i+1 
 if (adjustl(d1(k1:k2))//adjustl(d2(k1:k2)).eq.adjustl(d3(k1:k2)//d4(k1:k2)).and.   &
     d1(k1:k2)//adjustl(d2(k1:k2)).eq.adjustl(d3(k1:k2))//d4(k1:k2)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
end
