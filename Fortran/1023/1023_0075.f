       program main
	  print *,'main'
	  main_val = 1
	  call sub
	  call i_sub
	  main_val = 2
          stop
       end program

       subroutine sub
	 print *,'sub'
	 sub_val = 3
       end
	  subroutine i_sub
	    print *,'i_sub'
	    i_sub_val = 4
	  end subroutine
