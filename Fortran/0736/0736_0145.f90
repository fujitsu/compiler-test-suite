subroutine sub(pproc,dproc)
  interface 
     function dproc()
     type y
      integer,allocatable,dimension(:)::y1
     end type
     type(y),allocatable::dproc(:)
     end function
     function pproc()
     type y
      integer,allocatable,dimension(:)::y1
     end type
     type(y),pointer::pproc(:)
     end function
  end interface
end
print *,'pass'
end
