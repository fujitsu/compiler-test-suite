subroutine sub(dproc)
  interface 
     function dproc()
     type y
      integer,allocatable,dimension(:)::y1
     end type
     type(y),allocatable::dproc(:)
     end function
  end interface
end
print *,'pass'
end
