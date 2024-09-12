subroutine t1(fp,fd,c1,f1,f2,f3,f4,f5,f6,fx1,fx2,fx3,fx4,fx5,fx6,c2,i)
entry      t2(fp,fd,c1,f1,f2,f3,f4,f5,f6,fx1,fx2,fx3,fx4,fx5,fx6,c2,i)
 interface  
   function fp()
     character(2),pointer::fp
   end function
   function fa()
     character(2),allocatable::fa
   end function
   function fd()
     character(2)::fd
   end function
   function fpx(i)
     character(i),pointer::fpx
   end function
   function fax(i)
     character(i),allocatable::fax
   end function
   function fdx(i)
     character(i)::fdx
   end function
 end interface
 character(*)::c1,c2
 procedure(fp)        ::f1
 procedure(fp)        ::f2
 procedure(fd)::f3
 procedure(fd)        ::f4
 procedure(fa)::f5
 procedure(fa)        ::f6
 procedure(fpx)::fx1
 procedure(fpx)        ::fx2
 procedure(fdx)::fx3
 procedure(fdx)        ::fx4
 procedure(fax)::fx5
 procedure(fax)        ::fx6
 if (fp()/='xy')print *,'error-01'
 if (fd()/='xy')print *,'error-02'
 if (len(c1)/=3)print *,'error-03'
 if (c1/='123')print *,'error-04'
 if (len(c2)/=5)print *,'error-05'
 if (c2/='45678')print *,'error-06'
 if (f1()/='xy')print *,'error-07'
 if (f2()/='xy')print *,'error-08'
 if (f3()/='xy')print *,'error-09'
 if (f4()/='xy')print *,'error-10'
 if (f5()/='xy')print *,'error-11'
 if (f6()/='xy')print *,'error-12'
 if (fa()/='xy')print *,'error-16'

 if (fpx(i)/='xy')print *,'error-x01'
 if (fdx(i)/='xy')print *,'error-x02'
 if (fx1(i)/='xy')print *,'error-x07'
 if (fx2(i)/='xy')print *,'error-x08'
 if (fx3(i)/='xy')print *,'error-x09'
 if (fx4(i)/='xy')print *,'error-x10'
 if (fx5(i)/='xy')print *,'error-x11'
 if (fx6(i)/='xy')print *,'error-x12'
 if (fax(i)/='xy')print *,'error-x16'
end subroutine

subroutine t0
 interface  
   function fp()
     character(2),pointer::fp
   end function
   function fa()
     character(2),allocatable::fa
   end function
   function fd()
     character(2)::fd
   end function
   function fpx(i)
     character(i),pointer::fpx
   end function
   function fax(i)
     character(i),allocatable::fax
   end function
   function fdx(i)
     character(i)::fdx
   end function
 end interface
 character(*),parameter::c1='123',c2='45678'
 procedure(fp),pointer::f1
 procedure(fp)        ::f2
 procedure(fd),pointer::f3
 procedure(fd)        ::f4
 procedure(fa),pointer::f5
 procedure(fa)        ::f6
 procedure(fpx),pointer::fx1
 procedure(fpx)        ::fx2
 procedure(fdx),pointer::fx3
 procedure(fdx)        ::fx4
 procedure(fax),pointer::fx5
 procedure(fax)        ::fx6
 f1=>fp
 f3=>fd
 f5=>fa
 fx1=>fpx
 fx3=>fdx
 fx5=>fax
 call t1(fp,fd,c1,f1,f2,f3,f4,f5,f6,fx1,fx2,fx3,fx4,fx5,fx6,c2,2)
 call t2(fp,fd,c1,f1,f2,f3,f4,f5,f6,fx1,fx2,fx3,fx4,fx5,fx6,c2,2)
end subroutine

call t0
print *,'pass'
end

   function fp() result(r)
   entry    f2() result(r)
     character(2),pointer::r
     allocate(r)
     r='xy'
   end function
   function fa() result(r)
   entry    f6() result(r)
     character(2),allocatable::r
     allocate(r)
     r='xy'
   end function
   function fd() result(r)
   entry    f4() result(r)
     character(2)::r
     r='xy'
   end function
   function fpx(i) result(r)
   entry    fx2(i) result(r)
     character(i),pointer::r
     allocate(r)
     r='xy'
   end function
   function fax(i) result(r)
   entry    fx6(i) result(r)
     character(i),allocatable::r
     allocate(r)
     r='xy'
   end function
   function fdx(i) result(r)
   entry    fx4(i) result(r)
     character(i)::r
     r='xy'
   end function
