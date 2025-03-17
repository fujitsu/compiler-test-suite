      call s1
      print *,'pass'
      end
      subroutine s1
      parameter (i=2,j=1)
      type x1
        character*5 x11
        character*5 x12(2)
      end type
      type (x1),parameter::x=x1('12345','12345')
      character*(5),dimension(2)::bx='12345'
      character*(*),parameter,dimension(2)::bp='12345'
      character*(5),dimension(0)::cx='12345'
      character*(*),parameter,dimension(0)::cp='12345'
      integer,parameter::v(0)=0 
      parameter (n1=len(bp(i:j)))
      parameter (n2=len(bp(i:j)(:)))
      parameter (n3=len(bp(i:j)(1:)))
      parameter (n4=len(bp(i:j)(:5)))
      parameter (n5=len(bp(i:j)(1:5)))
      parameter (n6=len(bp(v)))
      parameter (n7=len(bp(v)(:)))
      parameter (n8=len(bp(v)(1:)))
      parameter (n9=len(bp(v)(:5)))
      parameter (na=len(bp(v)(1:5)))
      parameter (nb=len(cp(i:j)))
      parameter (nc=len(cp(i:j)(:)))
      parameter (nd=len(cp(i:j)(1:)))
      parameter (ne=len(cp(i:j)(:5)))
      parameter (nf=len(cp(i:j)(1:5)))
      parameter (ng=len(cp(v)))
      parameter (nh=len(cp(v)(:)))
      parameter (ni=len(cp(v)(1:)))
      parameter (nj=len(cp(v)(:5)))
      parameter (nk=len(cp(v)(1:5)))
      parameter (m1=len(bp(i:j)(2:4)))
      parameter (m2=len(bp(v)(2:4)))
      parameter (m3=len(cp(i:j)(2:4)))
      parameter (m4=len(cp(v)(2:4)))
      if (n1/=5)print *,'fail'
      if (n2/=5)print *,'fail'
      if (n3/=5)print *,'fail'
      if (n4/=5)print *,'fail'
      if (n5/=5)print *,'fail'
      if (n6/=5)print *,'fail'
      if (n7/=5)print *,'fail'
      if (n8/=5)print *,'fail'
      if (n9/=5)print *,'fail'
      if (na/=5)print *,'fail'
      if (nb/=5)print *,'fail'
      if (nc/=5)print *,'fail'
      if (nd/=5)print *,'fail'
      if (ne/=5)print *,'fail'
      if (nf/=5)print *,'fail'
      if (ng/=5)print *,'fail'
      if (nh/=5)print *,'fail'
      if (ni/=5)print *,'fail'
      if (nj/=5)print *,'fail'
      if (nk/=5)print *,'fail'
      if (m1/=3)print *,'fail'
      if (m2/=3)print *,'fail'
      if (m3/=3)print *,'fail'
      if (m4/=3)print *,'fail'
      if (len(bx(i:j))/=5)print *,'fail'
      if (len(bx(i:j)(:))/=5)print *,'fail'
      if (len(bx(i:j)(1:))/=5)print *,'fail'
      if (len(bx(i:j)(:5))/=5)print *,'fail'
      if (len(bx(i:j)(1:5))/=5)print *,'fail'
      if (len(bx(v))/=5)print *,'fail'
      if (len(bx(v)(:))/=5)print *,'fail'
      if (len(bx(v)(1:))/=5)print *,'fail'
      if (len(bx(v)(:5))/=5)print *,'fail'
      if (len(bx(v)(1:5))/=5)print *,'fail'
      if (len(cx(i:j))/=5)print *,'fail'
      if (len(cx(i:j)(:))/=5)print *,'fail'
      if (len(cx(i:j)(1:))/=5)print *,'fail'
      if (len(cx(i:j)(:5))/=5)print *,'fail'
      if (len(cx(i:j)(1:5))/=5)print *,'fail'
      if (len(cx(v))/=5)print *,'fail'
      if (len(cx(v)(:))/=5)print *,'fail'
      if (len(cx(v)(1:))/=5)print *,'fail'
      if (len(cx(v)(:5))/=5)print *,'fail'
      if (len(cx(v)(1:5))/=5)print *,'fail'
      if (len(bx(i:j)(2:4))/=3)print *,'fail'
      if (len(bx(v)(2:4))/=3)print *,'fail'
      if (len(cx(i:j)(2:4))/=3)print *,'fail'
      if (len(cx(v)(2:4))/=3)print *,'fail'
      end
