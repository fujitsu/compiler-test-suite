subroutine sub(pproc,dproc)
  interface 
     function dproc()
     integer,allocatable::dproc(:)
     end function
     function pproc()
     integer,pointer::pproc(:)
     end function
  end interface
end
print *,'pass'
end
