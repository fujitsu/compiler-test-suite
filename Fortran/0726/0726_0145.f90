 call s1
 print *,'pass'
 end
 subroutine s1
      integer b(5)/1,2,3,4,5/
      real    a(5),aa(5)
      complex c(5),cc(5)
      i1=1;i5=5
      forall (i=1:5)
        a(i)=b(i)
      end forall
      if (any(a/=(/1,2,3,4,5/)))write(6,*) "NG"
      forall (i=i1:i5:i1)
        aa(i)=b(i)
      end forall
      if (any(aa/=(/1,2,3,4,5/)))write(6,*) "NG"
      forall (i=1:5)
        c(i)=b(i)
      end forall
      if (any(c/=(/1,2,3,4,5/)))write(6,*) "NG"
      forall (i=i1:i5:i1)
        cc(i)=b(i)
      end forall
      if (any(cc/=(/1,2,3,4,5/)))write(6,*) "NG"
      end
