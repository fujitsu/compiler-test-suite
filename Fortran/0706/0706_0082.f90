c
c
      call s1
      print *,'pass'
      end
      module test
       integer,parameter::l=-2,u=-1
       type st1
        complex     st11(l:u)
        character*2 st12(l:u)
       end type
       type st2
        complex       st21(l:u)
        character*2   st22(l:u)
        type (st1) :: st23(l:u)
       end type
       complex,dimension(l:u),parameter::st1p1=(/ (1,1),(2,2) /)
       complex,dimension(l:u),parameter::st1p2=(/ st1p1+(2,2)/)
       character(len=*),dimension(l:u),parameter::st2p1=(/'1','2'/)
       character(len=*),dimension(l:u),parameter::st2p2=
     1  (/ achar(ichar(st2p1)+2) /)
       type(st1),dimension(l:u),parameter::st3p1=
     1  (/ (st1( st1p1 , st2p1 ) , m=1,2)  /)
       type(st2),dimension(l:u),parameter::st4p1=
     1  (/ (st2(st1p2 ,st2p2 , st3p1),m=1,2) /)
       contains
        subroutine chk_scaler(st2_var_scaler)
        type (st2),intent(in)::st2_var_scaler 
        if (st2_var_scaler%st21(-2)/= (1,1)+(2,2))print *,'fail'
        if (st2_var_scaler%st21(-1)/= (2,2)+(2,2))print *,'fail'
        if (st2_var_scaler%st22(-2)/= '3'        )print *,'fail'
        if (st2_var_scaler%st22(-1)/= '4'        )print *,'fail'
        if (st2_var_scaler%st23(-2)%st11(-2)/=(1,1))print *,'fail'
        if (st2_var_scaler%st23(-2)%st11(-1)/=(2,2))print *,'fail'
        if (st2_var_scaler%st23(-2)%st12(-2)/='1'  )print *,'fail'
        if (st2_var_scaler%st23(-2)%st12(-1)/='2'  )print *,'fail'
        if (st2_var_scaler%st23(-1)%st11(-2)/=(1,1))print *,'fail'
        if (st2_var_scaler%st23(-1)%st11(-1)/=(2,2))print *,'fail'
        if (st2_var_scaler%st23(-1)%st12(-2)/='1'  )print *,'fail'
        if (st2_var_scaler%st23(-1)%st12(-1)/='2'  )print *,'fail'
        end subroutine
      end module
      subroutine s1
      use test
      type (st2) read_value
      open (1,delim='quote')
      open (2,delim='quote')
      write(1,*)
     1 st2(st4p1(-1)%st21,st4p1(-1)%st22,
     1  (/      st4p1(-1)%st23  /)  )
      rewind 1
      read (1,*) read_value
      call chk_scaler(
     1 st2(st4p1(-1)%st21,st4p1(-1)%st22,
     1  (/      st4p1(-1)%st23  /)  ))
      call chk_scaler(read_value)
      write(2,*)
     1  (/      st4p1(-1)%st23  /)  
      rewind 2
      read (2,*) read_value%st23
      call chk_scaler(read_value)
      end
