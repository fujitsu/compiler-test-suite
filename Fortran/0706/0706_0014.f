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
      if (n1/=5)call errtra
      if (n2/=5)call errtra
      if (n3/=5)call errtra
      if (n4/=5)call errtra
      if (n5/=5)call errtra
      if (n6/=5)call errtra
      if (n7/=5)call errtra
      if (n8/=5)call errtra
      if (n9/=5)call errtra
      if (na/=5)call errtra
      if (nb/=5)call errtra
      if (nc/=5)call errtra
      if (nd/=5)call errtra
      if (ne/=5)call errtra
      if (nf/=5)call errtra
      if (ng/=5)call errtra
      if (nh/=5)call errtra
      if (ni/=5)call errtra
      if (nj/=5)call errtra
      if (nk/=5)call errtra
      if (m1/=3)call errtra
      if (m2/=3)call errtra
      if (m3/=3)call errtra
      if (m4/=3)call errtra
      if (len(bx(i:j))/=5)call errtra
      if (len(bx(i:j)(:))/=5)call errtra
      if (len(bx(i:j)(1:))/=5)call errtra
      if (len(bx(i:j)(:5))/=5)call errtra
      if (len(bx(i:j)(1:5))/=5)call errtra
      if (len(bx(v))/=5)call errtra
      if (len(bx(v)(:))/=5)call errtra
      if (len(bx(v)(1:))/=5)call errtra
      if (len(bx(v)(:5))/=5)call errtra
      if (len(bx(v)(1:5))/=5)call errtra
      if (len(cx(i:j))/=5)call errtra
      if (len(cx(i:j)(:))/=5)call errtra
      if (len(cx(i:j)(1:))/=5)call errtra
      if (len(cx(i:j)(:5))/=5)call errtra
      if (len(cx(i:j)(1:5))/=5)call errtra
      if (len(cx(v))/=5)call errtra
      if (len(cx(v)(:))/=5)call errtra
      if (len(cx(v)(1:))/=5)call errtra
      if (len(cx(v)(:5))/=5)call errtra
      if (len(cx(v)(1:5))/=5)call errtra
      if (len(bx(i:j)(2:4))/=3)call errtra
      if (len(bx(v)(2:4))/=3)call errtra
      if (len(cx(i:j)(2:4))/=3)call errtra
      if (len(cx(v)(2:4))/=3)call errtra
      end
