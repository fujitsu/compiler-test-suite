      call s1
      print *,'pass'
      end
      subroutine  err(i)
      print *,'error code :',i
      end
      subroutine c_chk(c,r,j)
      character*(*) c,r
      integer*2 j
      if (len(c).ne.j     )call err(1000)
      if (len(c).ne.len(r))call err(1001)
      if (c.ne.r) call err(1002)
      end
      subroutine s1
      implicit type(m1)(a),type(m2)(b),type(m1c)(c),type(m2c)(d)
      type m1c
        integer*2   m1c_a
        character*2 m1c_b
      end type
      type m2c
        integer*2   m2c_a
        character*5 m2c_b
      end type
      type m1
        type (m1c):: m1_1
        type (m1c):: m1_2
      end type
      type m2
        type (m2c):: m2_1
        type (m2c):: m2_2
      end type
      integer*2   get_m1c_a
                  get_m1c_a(c_m1c_darg1)=c_m1c_darg1%m1c_a
      character*2 get_m1c_b
                  get_m1c_b(c_m1c_darg2)=c_m1c_darg2%m1c_b
      integer*2   get_m2c_a
                  get_m2c_a(d_m2c_darg1)=d_m2c_darg1%m2c_a
      character*5 get_m2c_b
                  get_m2c_b(d_m2c_darg2)=d_m2c_darg2%m2c_b
      type(m1c):: get_m1_1
                  get_m1_1 (a_m1_darg1) =a_m1_darg1%m1_1
      type(m1c):: get_m1_2
                  get_m1_2 (a_m1_darg2) =a_m1_darg2%m1_2
      type(m2c):: get_m2_1
                  get_m2_1 (b_m2_darg1) =b_m2_darg1%m2_1
      type(m2c):: get_m2_2
                  get_m2_2 (b_m2_darg2) =b_m2_darg2%m2_2
      integer*2   get_m1_1_m1c_a
                  get_m1_1_m1c_a(a_m1_darg)=a_m1_darg%m1_1%m1c_a
      character*2 get_m1_1_m1c_b
                  get_m1_1_m1c_b(a_m1_darg)=a_m1_darg%m1_1%m1c_b
      integer*2   get_m1_2_m1c_a
                  get_m1_2_m1c_a(a_m1_darg)=a_m1_darg%m1_2%m1c_a
      character*2 get_m1_2_m1c_b
                  get_m1_2_m1c_b(a_m1_darg)=a_m1_darg%m1_2%m1c_b
      integer*2   get_m2_1_m2c_a
                  get_m2_1_m2c_a(b_m2_darg)=b_m2_darg%m2_1%m2c_a
      character*5 get_m2_1_m2c_b
                  get_m2_1_m2c_b(b_m2_darg)=b_m2_darg%m2_1%m2c_b
      integer*2   get_m2_2_m2c_a
                  get_m2_2_m2c_a(b_m2_darg)=b_m2_darg%m2_2%m2c_a
      character*5 get_m2_2_m2c_b
                  get_m2_2_m2c_b(b_m2_darg)=b_m2_darg%m2_2%m2c_b
      integer*2   get_mm1c_a
                  get_mm1c_a(c_m1c_darg1)=c_m1c_darg1%m1c_a *
     1                  c_m1c_darg1%m1c_a *  c_m1c_darg1%m1c_a
      character*6 get_mm1c_b
                  get_mm1c_b(c_m1c_darg2)=c_m1c_darg2%m1c_b//
     1                  c_m1c_darg2%m1c_b // c_m1c_darg2%m1c_b
      integer*2   get_mm2c_a
                  get_mm2c_a(d_m2c_darg1)=d_m2c_darg1%m2c_a *
     1                  d_m2c_darg1%m2c_a *  d_m2c_darg1%m2c_a
      character*15get_mm2c_b
                  get_mm2c_b(d_m2c_darg2)=d_m2c_darg2%m2c_b//
     1                  d_m2c_darg2%m2c_b // d_m2c_darg2%m2c_b
      integer*2   get_mm1_1_m1c_a
                  get_mm1_1_m1c_a(a_m1_darg)=a_m1_darg%m1_1%m1c_a *
     1                  a_m1_darg%m1_1%m1c_a * a_m1_darg%m1_1%m1c_a
      character*15get_mm1_1_m1c_b
                  get_mm1_1_m1c_b(a_m1_darg)=a_m1_darg%m1_1%m1c_b //
     1                  a_m1_darg%m1_1%m1c_b // a_m1_darg%m1_1%m1c_b
      integer*2   get_mm1_2_m1c_a
                  get_mm1_2_m1c_a(a_m1_darg)=a_m1_darg%m1_2%m1c_a *
     1                  a_m1_darg%m1_2%m1c_a * a_m1_darg%m1_2%m1c_a
      character*15get_mm1_2_m1c_b
                  get_mm1_2_m1c_b(a_m1_darg)=a_m1_darg%m1_2%m1c_b //
     1                  a_m1_darg%m1_2%m1c_b // a_m1_darg%m1_2%m1c_b
      integer*2   get_mm2_1_m2c_a
                  get_mm2_1_m2c_a(b_m2_darg)=b_m2_darg%m2_1%m2c_a *
     1                  b_m2_darg%m2_1%m2c_a * b_m2_darg%m2_1%m2c_a
      character*15get_mm2_1_m2c_b
                  get_mm2_1_m2c_b(b_m2_darg)=b_m2_darg%m2_1%m2c_b //
     1                  b_m2_darg%m2_1%m2c_b // b_m2_darg%m2_1%m2c_b
      integer*2   get_mm2_2_m2c_a
                  get_mm2_2_m2c_a(b_m2_darg)=b_m2_darg%m2_2%m2c_a *
     1                  b_m2_darg%m2_2%m2c_a * b_m2_darg%m2_2%m2c_a
      character*15get_mm2_2_m2c_b
                  get_mm2_2_m2c_b(b_m2_darg)=b_m2_darg%m2_2%m2c_b //
     1                  b_m2_darg%m2_2%m2c_b // b_m2_darg%m2_2%m2c_b
      mf(m)=m**3
      character mc2*(2*3),mc2d*2,mc5*(5*3),mc5d*5
      mc2(mc2d)=mc2d//mc2d//mc2d
      mc5(mc5d)=mc5d//mc5d//mc5d
      a_01%m1_1%m1c_a = 10
      a_01%m1_1%m1c_b = 'ab'
      a_01%m1_2 = a_01%m1_1
      if (get_m1_2_m1c_a(a_01).ne.10  ) call err(2001)
      if (get_m1_2_m1c_b(a_01).ne.'ab') call err(2002)
      a_01%m1_2%m1c_a = 11
      a_01%m1_2%m1c_b = 'cd'
      b_01%m2_1%m2c_a = 12
      b_01%m2_1%m2c_b = 'efghi'
      b_01%m2_2 = b_01%m2_1
      if (get_m2_2_m2c_a(b_01).ne.12  ) call err(2003)
      if (get_m2_2_m2c_b(b_01).ne.'efghi') call err(2004)
      b_01%m2_2%m2c_a = 13
      b_01%m2_2%m2c_b = 'jklmn'
      if (get_m1c_a(a_01%m1_1).ne.10)   call err(2005)
      if (get_m1c_b(a_01%m1_1).ne.'ab') call err(2006)
      if (get_m1c_a(a_01%m1_2).ne.11)   call err(2007)
      if (get_m1c_b(a_01%m1_2).ne.'cd') call err(2008)
      if (get_m2c_a(b_01%m2_1).ne.12)   call err(2009)
      if (get_m2c_b(b_01%m2_1).ne.'efghi') call err(2010)
      if (get_m2c_a(b_01%m2_2).ne.13)   call err(2309)
      if (get_m2c_b(b_01%m2_2).ne.'jklmn') call err(2310)
      if (get_m1c_a( get_m1_1( a_01 ) ).ne.10  ) call err (2011)
      if (get_m1c_b( get_m1_1( a_01 ) ).ne.'ab') call err (2012)
      if (get_m1c_a( get_m1_2( a_01 ) ).ne.11  ) call err (2013)
      if (get_m1c_b( get_m1_2( a_01 ) ).ne.'cd') call err (2014)
      if (get_m2c_a( get_m2_1( b_01 ) ).ne.12  ) call err (2015)
      if (get_m2c_b( get_m2_1( b_01 ) ).ne.'efghi') call err (2016)
      if (get_m2c_a( get_m2_2( b_01 ) ).ne.13  ) call err (2017)
      if (get_m2c_b( get_m2_2( b_01 ) ).ne.'jklmn') call err (2018)
      if (get_m1_1_m1c_a(a_01).ne.10)   call err(2021)
      if (get_m1_1_m1c_b(a_01).ne.'ab') call err(2022)
      if (get_m1_2_m1c_a(a_01).ne.11)   call err(2023)
      if (get_m1_2_m1c_b(a_01).ne.'cd') call err(2024)
      if (get_m2_1_m2c_a(b_01).ne.12)   call err(2025)
      if (get_m2_1_m2c_b(b_01).ne.'efghi') call err(2026)
      if (get_m2_2_m2c_a(b_01).ne.13)   call err(2027)
      if (get_m2_2_m2c_b(b_01).ne.'jklmn') call err(2028)
      if (get_mm1c_a(a_01%m1_1).ne.mf(10))   call err(2035)
      if (get_mm1c_b(a_01%m1_1).ne.mc2('ab')) call err(2036)
      if (get_mm1c_a(a_01%m1_2).ne.mf(11))   call err(2037)
      if (get_mm1c_b(a_01%m1_2).ne.mc2('cd')) call err(2038)
      if (get_mm2c_a(b_01%m2_1).ne.mf(12))   call err(2039)
      if (get_mm2c_b(b_01%m2_1).ne.mc5('efghi')) call err(2040)
      if (get_mm2c_a(b_01%m2_2).ne.mf(13))   call err(2049)
      if (get_mm2c_b(b_01%m2_2).ne.mc5('jklmn')) call err(2050)
      if (get_mm1c_a( get_m1_1( a_01 ) ).ne.mf(10)  ) call err (2051)
      if (get_mm1c_b( get_m1_1( a_01 ) ).ne.mc2('ab')) call err (2052)
      if (get_mm1c_a( get_m1_2( a_01 ) ).ne.mf(11)  ) call err (2053)
      if (get_mm1c_b( get_m1_2( a_01 ) ).ne.mc2('cd')) call err (2054)
      if (get_mm2c_a( get_m2_1( b_01 ) ).ne.mf(12)  ) call err (2055)
      if (get_mm2c_b( get_m2_1( b_01 ) ).ne.mc5('efghi'))call err(2056)
      if (get_mm2c_a( get_m2_2( b_01 ) ).ne.mf(13)  ) call err (2057)
      if (get_mm2c_b( get_m2_2( b_01 ) ).ne.mc5('jklmn'))call err(2058)
      if (get_mm1_1_m1c_a(a_01).ne.mf(10))   call err(2061)
      if (get_mm1_1_m1c_b(a_01).ne.mc2('ab')) call err(2062)
      if (get_mm1_2_m1c_a(a_01).ne.mf(11))   call err(2063)
      if (get_mm1_2_m1c_b(a_01).ne.mc2('cd')) call err(2064)
      if (get_mm2_1_m2c_a(b_01).ne.mf(12))   call err(2065)
      if (get_mm2_1_m2c_b(b_01).ne.mc5('efghi')) call err(2066)
      if (get_mm2_2_m2c_a(b_01).ne.mf(13))   call err(2067)
      if (get_mm2_2_m2c_b(b_01).ne.mc5('jklmn')) call err(2068)
      a1_1%m1_1%m1c_a= 6
      a1_1%m1_1%m1c_b='1'//'2'
      call c_chk(a1_1%m1_1%m1c_b//a1_1%m1_1%m1c_b//
     1           a1_1%m1_1%m1c_b,'121212',a1_1%m1_1%m1c_a)
      d_1%m2c_a= 21
      d_1%m2c_b='3'//'4'//'5'//'6'
      c_1%m1c_b='1'//'2'
      call c_chk(c_1%m1c_b//d_1%m2c_b//c_1%m1c_b//
     1  d_1%m2c_b//c_1%m1c_b//d_1%m2c_b,'123456 123456 123456 ',
     1  d_1%m2c_a)
      end
