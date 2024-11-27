 call s1
 print *,'pass'
 end
 module m1
   type a
     sequence
     integer ::a1
     integer,pointer ::a2
     integer,dimension(2) ::a3
     integer,pointer,dimension(:) ::a4=>null()
   end type
   save
   type (a),parameter:: v1=a(1,null(),3,null()),v2=v1
   type (a):: v3(2)=v1,v4(2)=v2
   contains
    subroutine sub(v)
    type(a)::v
    if (v%a1/=1)write(6,*) "NG"
    if (any(v%a3/=3))write(6,*) "NG"
    if (associated(v%a2))write(6,*) "NG"
    if (associated(v%a4))write(6,*) "NG"
    end subroutine
    subroutine subx(v)
    type(a)::v
    if (v%a1/=11)write(6,*) "NG"
    if (any(v%a3/=13))write(6,*) "NG"
    if (associated(v%a2))write(6,*) "NG"
    if (associated(v%a4))write(6,*) "NG"
    end subroutine
 end
 subroutine s1
 use m1
   type (a):: w1=v1,w2=v2
   type (a):: w3(2)=v1,w4(2)=v1
   type (a):: w5=v1,w6=a(11,null(),13,null())
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
 call sub(w5)
 call subx(w6)
 end
