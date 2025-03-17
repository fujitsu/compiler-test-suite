       integer*1 param_i1,rcode_i1,func_i1
       integer*2 param_i2,rcode_i2,func_i2
       integer*4 param_i4,rcode_i4,func_i4
       real*4 param_r4,rcode_r4,func_r4
       real*8 param_r8,rcode_r8,func_r8
       complex*8 param_c8,rcode_c8,func_c8
       complex*16 param_c16,rcode_c16,func_c16
       logical*1 param_l1,rcode_l1,func_l1
       logical*4 param_l4,rcode_l4,func_l4
       character*1 param_ch1,rcode_ch1,func_ch1
 
       param_i1=1
       rcode_i1=func_i1(param_i1)
       print *,rcode_i1
 
       param_i2=2
       rcode_i2=func_i2(param_i2)
       print *,rcode_i2
 
       param_i4=4
       rcode_i4=func_i4(param_i4)
       print *,rcode_i4
 
       param_r4=4
       rcode_r4=func_r4(param_r4)
       print *,rcode_r4
 
       param_r8=8
       rcode_r8=func_r8(param_r8)
       print *,rcode_r8
 
       param_c8=8
       rcode_c8=func_c8(param_c8)
       print *,rcode_c8
 
       param_c16=16
       rcode_c16=func_c16(param_c16)
       print *,rcode_c16
 
       param_l1=.true.
       rcode_l1=func_l1(param_l1)
       print *,rcode_l1
 
       param_l4=.false.
       rcode_l4=func_l4(param_l4)
       print *,rcode_l4
 
       param_ch1='*'
       rcode_ch1=func_ch1(param_ch1)
       print *,rcode_ch1
 
       end
 
 
       integer*1 function func_i1(param_i1)
       integer*1 param_i1
       print *,param_i1
       func_i1 = 1
       end
       integer*2 function func_i2(param_i2)
       integer*2 param_i2
       print *,param_i2
       func_i2 = 2
       end
       integer*4 function func_i4(param_i4)
       integer*4 param_i4
       print *,param_i4
       func_i4 = 4
       end
       real*4 function func_r4(param_r4)
       real*4 param_r4
       print *,param_r4
       func_r4 = 4
       end
       real*8 function func_r8(param_r8)
       real*8 param_r8
       print *,param_r8
       func_r8 = 8
       end
       complex*8 function func_c8(param_c8)
       complex*8 param_c8
       print *,param_c8
       func_c8 = 8
       end
       complex*16 function func_c16(param_c16)
       complex*16 param_c16
       print *,param_c16
       func_c16 = 16
       end
       logical*1 function func_l1(param_l1)
       logical*1 param_l1
       print *,param_l1
       func_l1 = .true.
       end
       logical*4 function func_l4(param_l4)
       logical*4 param_l4
       print *,param_l4
       func_l4 = .false.
       end
       character*1 function func_ch1(param_ch1)
       character*1 param_ch1
       print *,param_ch1
       func_ch1 = '*'
       end
