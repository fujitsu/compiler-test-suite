      program main
      call sub1()
      call sub2()
      print *,'pass'
      end

      subroutine sub1()
      call sss1 ()
      call sss2 ()
      call sss3 ()
      call sss4 ()
      call sss5 ()
      call sss6 ()
      call sss7 ()
      call sss8 ()
      call sss9 ()
      call sss10()
      call sss11()
      call sss12()
      call sss13()
      call sss14()
      call sss15()
      call sss16()
      call sss17()
      call sss18()
      call sss19()
      call sss20()
      call sss21()
      call sss22()
      call sss23()
      end

      subroutine sss1 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st1
      st1%i=1
      call ar_1(st1%i)
      end
      subroutine sss21()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st1
      st1%i=1
      call ar_1(st1%i+1)
      end
      subroutine sss22()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st1
      st1%i=1
      call ar_1(1+st1%i)
      end
      subroutine sss23()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st2(10)
      st2%i=1
      call ar_1(st2(1)%i+1)
      end
      subroutine sss2 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st2(10)
      st2%i=1
      call ar_1(st2(1)%i)
      end
      subroutine sss3 ()
      call ar_2(1)
      end
      subroutine sss4 ()
      call ar_2(1+1)
      end
      subroutine sss5 ()
      integer par
      parameter (par=1)
      call ar_2(par)
      end
      subroutine sss6 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st3
      st3%i=1
      call ar_3(st3)
      end
      subroutine sss7 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st4(10)
      st4%i=1
      call ar_3(st4(1))
      end
      subroutine sss8 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st5(10)
      st5%i=1
      call ar_4(st5)
      end
      subroutine sss9 ()
      integer j
      j=1
      call ar_1(j)
      end
      subroutine sss20()
      integer j
      j=1
      call ar_1(j+1)
      end
      subroutine sss10()
      integer a1(10)
      a1=1
      call ar_1(a1(1))
      end
      subroutine sss19()
      integer a1(10)
      a1=1
      call ar_1(a1(1)+1)
      end
      subroutine sss11()
      integer a2(10)
      a2=1
      call ar_5(a2)
      end
      subroutine sss18()
      integer a2(10)
      a2=1
      call ar_5(a2+1)
      end
      subroutine sss12()
      integer a1(10)
      pointer (p1,ip1)
      a1=1
      p1=loc(a1)
      call ar_1(ip1)
      end
      subroutine sss17()
      integer a1(10)
      pointer (p1,ip1)
      a1=1
      p1=loc(a1)
      call ar_1(ip1+1)
      end
      subroutine sss13()
      integer a1(10),ip2(10)
      pointer (p2,ip2)
      a1=1
      p2=loc(a1)
      call ar_1(ip2(1))
      end
      subroutine sss16()
      integer a1(10),ip2(10)
      pointer (p2,ip2)
      a1=1
      p2=loc(a1)
      call ar_1(ip2(1)+1)
      end
      subroutine sss14()
      integer a1(10),ip3(10)
      pointer (p3,ip3)
      a1=1
      p3=loc(a1)
      call ar_5(ip3)
      end
      subroutine sss15()
      integer a1(10),ip3(10)
      pointer (p3,ip3)
      a1=1
      p3=loc(a1)
      call ar_5(ip3+1)
      end

      subroutine ar_1(i)
      j=i
      end
      subroutine ar_2(i)
      j=i
      end
      subroutine ar_5(i)
      integer i(10)
      j=i(1)
      end
      subroutine ar_3(st)
      type ty
         sequence
        integer i
      end type
      type (ty)::st
      j=st%i
      end
      subroutine ar_4(st)
      type ty
         sequence
        integer i
      end type
      type (ty)::st(10)
      j=st(1)%i
      end

      subroutine sub2()
      call iss1 ()
      call iss2 ()
      call iss3 ()
      call iss4 ()
      call iss5 ()
      call iss6 ()
      call iss7 ()
      call iss8 ()
      call iss9 ()
      call iss10()
      call iss11()
      call iss12()
      call iss13()
      call iss14()
      call iss15()
      call iss16()
      call iss17()
      call iss18()
      call iss19()
      call iss20()
      call iss21()
      call iss22()
      call iss23()
      end

      subroutine iss1 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st1
      st1%i=1
      ca=l ar_1(st1%i)
      end
      subroutine iss21()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st1
      st1%i=1
      ca=l ar_1(st1%i+1)
      end
      subroutine iss23()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st2(10)
      st2%i=1
      ca=l ar_1(1+st2(1)%i+1)
      end
      subroutine iss22()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st2(10)
      st2%i=1
      ca=l ar_1(st2(1)%i+1)
      end
      subroutine iss2 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st2(10)
      st2%i=1
      ca=l ar_1(st2(1)%i)
      end
      subroutine iss3 ()
      ca=l ar_2(1)
      end
      subroutine iss4 ()
      ca=l ar_2(1+1)
      end
      subroutine iss5 ()
      integer par
      parameter (par=1)
      ca=l ar_2(par)
      end
      subroutine iss6 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st3
      st3%i=1
      ca=l ar_3(st3)
      end
      subroutine iss7 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st4(10)
      st4%i=1
      ca=l ar_3(st4(1))
      end
      subroutine iss8 ()
      type ty
         sequence
         integer i
      end type
      type (ty) :: st5(10)
      st5%i=1
      ca=l ar_4(st5)
      end
      subroutine iss9 ()
      integer j
      j=1
      ca=l ar_1(j)
      end
      subroutine iss20()
      integer j
      j=1
      ca=l ar_1(j+1)
      end
      subroutine iss10()
      integer a1(10)
      a1=1
      ca=l ar_1(a1(1))
      end
      subroutine iss19()
      integer a1(10)
      a1=1
      ca=l ar_1(a1(1)+1)
      end
      subroutine iss11()
      integer a2(10)
      a2=1
      ca=l ar_5(a2)
      end
      subroutine iss18()
      integer a2(10)
      a2=1
      ca=l ar_5(a2+1)
      end
      subroutine iss12()
      integer a1(10)
      pointer (p1,ip1)
      a1=1
      p1=loc(a1)
      ca=l ar_1(ip1)
      end
      subroutine iss17()
      integer a1(10)
      pointer (p1,ip1)
      a1=1
      p1=loc(a1)
      ca=l ar_1(ip1+1)
      end
      subroutine iss13()
      integer a1(10),ip2(10)
      pointer (p2,ip2)
      a1=1
      p2=loc(a1)
      ca=l ar_1(ip2(1))
      end
      subroutine iss16()
      integer a1(10),ip2(10)
      pointer (p2,ip2)
      a1=1
      p2=loc(a1)
      ca=l ar_1(ip2(1)+1)
      end
      subroutine iss14()
      integer a1(10),ip3(10)
      pointer (p3,ip3)
      a1=1
      p3=loc(a1)
      ca=l ar_5(ip3)
      end
      subroutine iss15()
      integer a1(10),ip3(10)
      pointer (p3,ip3)
      a1=1
      p3=loc(a1)
      ca=l ar_5(ip3+1)
      end

      function  lar_1(i)
      j=i
      lar_1=1
      end
      function  lar_2(i)
      j=i
      lar_2=1
      end
      function  lar_5(i)
      integer i(10)
      j=i(1)
      lar_5=1
      end
      function  lar_3(st)
      type ty
         sequence
        integer i
      end type
      type (ty)::st
      j=st%i
      lar_3=1
      end
      function  lar_4(st)
      type ty
         sequence
        integer i
      end type
      type (ty)::st(10)
      j=st(1)%i
      lar_4=1
      end
