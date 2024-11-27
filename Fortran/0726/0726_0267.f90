 call s1
 print *,'pass'
 end
 module m1
   type a
     sequence
     integer ::a1=1
     integer,dimension(2) ::a3=3
   end type
   save
   type (a):: v1,v2
   equivalence (v1,v2)
   type (a):: v3(2),v4(2)
   equivalence (v3,v4)
   contains
    subroutine sub(v)
    type(a)::v
    if (v%a1/=1)write(6,*) "NG"
    if (any(v%a3/=3))write(6,*) "NG"
    end subroutine
    subroutine subx(v)
    type(a)::v
    if (v%a1/=11)write(6,*) "NG"
    if (any(v%a3/=13))write(6,*) "NG"
    end subroutine
 end
 subroutine s1
 use m1
   type (a):: w1,w2
   equivalence (w1,w2)
   type (a):: w3(2),w4(2)
   equivalence (w3,w4)
   type (a):: w5,w6=a(11,13)
   save w5
   equivalence (w5,w6)
 call sub(v1)
 call sub(v2)
 call sub(w1)
 call sub(w2)
 call sub(v3(1))
 call sub(v4(1))
 call sub(w3(1))
 call sub(w4(1))
 call sub(v3(2))
 call sub(v4(2))
 call sub(w3(2))
 call sub(w4(2))
 call subx(w5)
 call subx(w6)
 end
