 call s1
 print *,'pass'
 end
 subroutine s1
 call s11
 call s12
 call s13
 call s14
 call s15
 call s16
 call s17
 call s18
 call s19
 call s20
 call s21
 call s22
 call s23
 end
 subroutine s11
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=(-1,-1)+(-1,-1)-(-1,-1)
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s12
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 parameter(ap=-1)
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap-ap+ap
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s13
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16),parameter,dimension(2)::ap=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap(2)+ap(1)-ap(k1)
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s14
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16)::ap=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap+ap-ap
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s15
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16),dimension(2)::ap=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap(k1+k1)+ap(k1+k1)-ap(k1+k1)
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s16
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap()+ap()-ap()
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
  contains
    pure function ap()
    real(16) ap
    ap=-1
    end function
end
 subroutine s17
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 ap()=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap()+ap()-ap()
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s18
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=(/((-1,-1),i=1,k5)/)+&
      (/((-1,-1),i=1,k5)/)-&
      (/((-1,-1),i=1,k5)/)
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s19
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16),dimension(5),parameter::ap=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap+ap-ap
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s20
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16),parameter,dimension(5)::ap=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap(k1:k5:k1)+ap(k1:k5:k1)-ap(k1:k5:k1)
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s21
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16),dimension(5)::ap=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap-ap+ap
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s22
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16),dimension(5)::ap=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap(k1:k5:k1)+ap(k1:k5:k1)-ap(k1:k5:k1)
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
end
 subroutine s23
 implicit real(16)(a)
 real(16),dimension(5) ::a=(/1,0,3,4,0/)
 real(16),dimension(5)::ax=-1
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==0)
    a=ap(ax)+ap(ax)-ap(ax)
   end where
 end forall
 if (any(abs(a-(/1,-1,3,4,-1/))>0.0001))write(6,*) "NG"
  contains
    elemental function ap(ax)
    real(16), ap,ax
    intent(in)::ax
    ap=ax
    end function
end
