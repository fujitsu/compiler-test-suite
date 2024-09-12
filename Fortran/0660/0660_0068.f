      module mod1
      intrinsic date_and_time
      intrinsic mvbits       
      intrinsic random_seed  
      intrinsic random_number
      intrinsic system_clock 
      end
      use mod1,in_1=>date_and_time,
     - in_2=>mvbits,
     - in_3=>random_seed,
     - in_4=>random_number,
     - in_5=>system_clock
      print *,'pass'
      end
