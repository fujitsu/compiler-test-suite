      program main
      call sub1()
      call sub2()
      print *,'pass'
      end

      subroutine sub1()
      integer par
      parameter (par=1)
      type ty
        sequence
         integer i
      end type
      type (ty) :: st1,st2(10),st3,st4(10),st5(10)
      integer j,a1(10),a2(10),ip2(10),ip3(10)
      pointer (p1,ip1)
      pointer (p2,ip2)
      pointer (p3,ip3)
      j=1
      a1=1
      a2=1
      st1%i=1
      st2%i=1
      st3%i=1
      st4%i=1
      st5%i=1
      p1=loc(a1)
      p2=loc(a1)
      p3=loc(a1)
      call ar_1(st1%i)
      call ar_1(st2(1)%i)
      call ar_2(1)
      call ar_2(1+1)
      call ar_2(par)
      call ar_3(st3)
      call ar_3(st4(1))
      call ar_4(st5)
      call ar_1(j)
      call ar_1(a1(1))
      call ar_5(a2)
      call ar_1(ip1)
      call ar_1(ip2(1))
      call ar_5(ip3)
      end

      subroutine ar_1(i)
      i=1
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
      integer par
      parameter (par=1)
      type ty
        sequence
         integer i
      end type
      type (ty) :: st1,st2(10),st3,st4(10),st5(10)
      integer j,a1(10),a2(10),ip2(10),ip3(10)
      pointer (p1,ip1)
      pointer (p2,ip2)
      pointer (p3,ip3)
      j=1
      a1=1
      a2=1
      st1%i=1
      st2%i=1
      st3%i=1
      st4%i=1
      st5%i=1
      p1=loc(a1)
      p2=loc(a1)
      p3=loc(a1)
      ca=l ar_1(st1%i)
      ca=l ar_1(st2(1)%i)
      ca=l ar_2(1)
      ca=l ar_2(1+1)
      ca=l ar_2(par)
      ca=l ar_3(st3)
      ca=l ar_3(st4(1))
      ca=l ar_4(st5)
      ca=l ar_1(j)
      ca=l ar_1(a1(1))
      ca=l ar_5(a2)
      ca=l ar_1(ip1)
      ca=l ar_1(ip2(1))
      ca=l ar_5(ip3)
      end

      function  lar_1(i)
      i=1
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
