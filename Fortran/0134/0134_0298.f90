subroutine t1(fp,fd,c1,f1,f2,f3,f4,f5)
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
 character(*)::c1
 procedure(fp)        ::f1
 procedure(fp)        ::f2
 procedure(fd)::f3
 procedure(fd)        ::f4
 procedure(fa)::f5
 if (f5()/='xy')print *,'error-11'
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
 f1=>fp
 f3=>fd
 f5=>fa
 call t1(fp,fd,c1,f1,f2,f3,f4,f5)
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
     character(2),allocatable::r
     allocate(r)
     r='xy'
   end function
   function fd() result(r)
   entry    f4() result(r)
     character(2)::r
     r='xy'
   end function
