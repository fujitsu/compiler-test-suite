 call s1
 print *,'pass'
 end
 subroutine s1
 integer(8)::a1=2,a2=2,a3=2,a4=2
 integer(8)::cc1=2,cc2=2,cc3=2,cc4=2
 integer(8)::c1,c2,c3,c4
 integer(8) ia1,ia2,ia3,ia4
 pointer (ic1,c1); pointer (ic2,c2); pointer (ic3,c3); pointer (ic4,c4)
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
 if (c1**c2.eq.c3**c4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss2(id1,id2,id3,id4)
 integer(8) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2) i=i+1 
 if (d1**d2.eq.d3**d4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss3
 if (c1.eq.c2) i=i+1 
 if (c1**c2.eq.c3**c4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss4(id1,id2,id3,id4)
 integer(8) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2) i=i+1 
 if (d1**d2.eq.d3**d4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss5
 if (c1.eq.c2.and. &
     c1.eq.c2) i=i+1 
 if (c1**c2.eq.c3**c4.and. &
     c1**c2.eq.c3**c4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss6(id1,id2,id3,id4)
 integer(8) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (d1.eq.d2.and.&  
     d1.eq.d2) i=i+1 
 if (d1**d2.eq.d3**d4.and.   &
     d1**d2.eq.d3**d4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss7
 if (int(c1).eq.int(c2)) i=i+1 
 if (int(c1**c2).eq.int(c3**c4)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss8(id1,id2,id3,id4)
 integer(8) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (int(d1).eq.int(d2)) i=i+1 
 if (int(d1**d2).eq.int(d3**d4)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ss9
 if (int(c1).eq.int(c2)) i=i+1 
 if (int(c1**c2).eq.int(c3)**c4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ssa(id1,id2,id3,id4)
 integer(8) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (int(d1).eq.int(d2)) i=i+1 
 if (int(d1)**d2.eq.d3**int(d4)) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ssb
 if (int(c1).eq.int(c2).and. &
     int(c1).eq.int(c2)) i=i+1 
 if (c1**int(c2).eq.int(c3)**int(c4).and. &
     int(c1)**c2.eq.int(c3)**c4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
 subroutine ssc(id1,id2,id3,id4)
 integer(8) d1,d2,d3,d4
 pointer (id1,d1); pointer (id2,d2); pointer (id3,d3); pointer (id4,d4)
 if (int(d1).eq.int(d2).and.&  
     d1.eq.int(d2)) i=i+1 
 if (int(d1)**int(d2).eq.int(d3**d4).and.   &
     d1**int(d2).eq.int(d3)**d4) i=i+2 
 data i/0/; if (i/=3)print *,'fail'
 end subroutine
end
