 call s1
 print *,'pass'
 end
 subroutine s1
  call ss1
  call ss2
 end
 subroutine ss1
      integer b(5)/1,2,3,4,5/
      real    a(5),aa(5)
      complex c(5),cc(5)
      i1=1;i5=5
      forall (i=1:5)
        a(i)=b(i)
        aa(i)=b(i)
        c(i)=b(i)
        cc(i)=b(i)
      end forall
      if (any(a/=(/1,2,3,4,5/)))write(6,*) "NG"
      if (any(aa/=(/1,2,3,4,5/)))write(6,*) "NG"
      if (any(c/=(/1,2,3,4,5/)))write(6,*) "NG"
      if (any(cc/=(/1,2,3,4,5/)))write(6,*) "NG"
      end
 subroutine ss2
      integer b(5)/1,2,3,4,5/
      real    a(5),aa(5)
      complex c(5),cc(5)
      i1=1;i5=5
      forall (i=i1:i1+i1+i1+i1+i1:i5-i1-i1-i1-i1)
        a(i)=b(i)
        aa(i)=b(i)
        c(i)=b(i)
        cc(i)=b(i)
      end forall
      if (any(a/=(/1,2,3,4,5/)))write(6,*) "NG"
      if (any(aa/=(/1,2,3,4,5/)))write(6,*) "NG"
      if (any(c/=(/1,2,3,4,5/)))write(6,*) "NG"
      if (any(cc/=(/1,2,3,4,5/)))write(6,*) "NG"
      end
