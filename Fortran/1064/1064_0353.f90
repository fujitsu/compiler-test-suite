MODULE mod1
  CONTAINS  
    FUNCTION fun()
      integer  :: fun(2),fun1(2)
      fun =  1
    RETURN
      ENTRY fun1()
      fun1 =  1
    END FUNCTION
END MODULE

print *,'pass'
END 
