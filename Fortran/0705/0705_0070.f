      call s1
      print *,'pass'
      end
      subroutine s1
      external cfun1,cfun2
      integer*2,parameter::m1=12
      integer*1,parameter::m2=12
      character*(m1) tt
      character*(m1) ss
      character*(m2) ee
      if (ss(cfun1,cfun2).ne.'123412123412')call err(1001)
      if (ee(cfun1,cfun2).ne.'123412123412')call err(1002)
      end
      subroutine err(i)
      print *,'error code :',i
      print *,'fail'
      end
      function cfun1()
      entry    cfun2()
      character*(*) cfun1,cfun2
      if (len(cfun1).ne.2)call err(1003)
      cfun1='12'
      end
      function   ss(dext1,dext2)
      integer*2,parameter::m1=2
      integer*2,parameter::m2=2
      integer*2,parameter::m3=2
      integer*1,parameter::m4=2
      integer*1,parameter::m5=2
      integer*1,parameter::m6=2
      character*(m1) cfun1
      character*(m2) sfun1
      character*(m3) dext1
      character*(m4) cfun2
      character*(m5) sfun2
      character*(m6) dext2
      character*(m1+m2+m3+m4+m5+m6) ss
      character*(m1+m2+m3+m4+m5+m6) ee
      character*(m1+m2+m3+m4+m5+m6) ff
      character*(m1+m2+m3+m4+m5+m6) gg
      character*(m1+m2+m3+m4+m5+m6) ff1
      character*(m1+m2+m3+m4+m5+m6) gg1
      sfun1()='34'
      sfun2()=sfun1() 
      write(1,*) 
     1 1h',cfun1(),sfun1(),dext1(),cfun2(),sfun2(),dext2(),1h'
      rewind 1
      read (1,*) ss
      return
      entry      ee(dext1,dext2)
      open (2,delim='quote')
      write(2,*) cfun1()//sfun1()//dext1()//cfun2()//sfun2()//dext2()
      rewind 2
      read (2,*) ss
      return
      entry ff()
      ff=ff1( cfun1(),sfun1(),dext1(),cfun2(),sfun2(),dext2() )
      return
      entry gg()
      gg=gg1( cfun1()//sfun1()//dext1()//cfun2()//sfun2()//dext2() )
      return
      end
      function ff1(a1,a2,a3,a4,a5,a6)
      character*(*) ff1,a1,a2,a3,a4,a5,a6
      ff1=a1//a2//a3//a4//a5//a6
      end
      function gg1(a)
      character*(*) gg1,a
      gg1=a
      end
