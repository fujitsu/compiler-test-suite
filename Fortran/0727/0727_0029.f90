  integer, parameter :: trace_unit = 10
  character(len=20), parameter :: trace_filename = "tracefile"
  character(len=20)            :: cc

  call write_to_trace_unit("Hello1")
  call write_to_trace_unit("Hello2")
  call write_to_trace_unit("Hello3")

  open (1,file=trace_filename)
  read(1,'(a)') cc;if (index(cc,'Hello1')==0)print *,'error-1'
  read(1,'(a)') cc;if (index(cc,'Hello2')==0)print *,'error-2'
  read(1,'(a)') cc;if (index(cc,'Hello3')==0)print *,'error-3'
  read(1,'(a)',end=9) cc
  print *,'error-4'
9 close(1,status='delete')
 print *,'pass'
contains

  subroutine write_to_trace_unit(message)
    implicit none
    character(len=*), intent(in) :: message
    open(trace_unit,file=trim(adjustl(trace_filename)), &
         position="append",action="write",err=9997)
    write(trace_unit,*,err=9998) message
    close(trace_unit,status='keep',err=9999)
    return

9997 print *, message
    stop 'Error: write_to_trace_unit: open failed'
9998 print *, message
    stop 'Error: write_to_trace_unit: write failed'
9999 print *, message
    stop 'Error: write_to_trace_unit: close failed'
  end subroutine write_to_trace_unit

end

