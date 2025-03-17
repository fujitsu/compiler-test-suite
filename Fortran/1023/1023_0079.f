1      program main
2         print *,'main'
3	  main_val = 1
4	  call sub()
5	  call i_sub()
6	  call subent()
7	  call i_subent()
8	  main_val = 2
9         stop




14     end program

16     subroutine sub()
17	 entry subent
18	 print *,'sub'
19	 sub_val = 3
	 print *,sub_val
20     end

22     subroutine i_sub()
23	 entry i_subent
24	 print *,'i_sub'
25	 i_sub_val = 4
	 print *,i_sub_val
26     end subroutine
