    interface gnr
    elemental function fun(x,n)        
    integer :: fun
       integer,value :: n
       VALUE :: x
       integer,intent(in) :: x
     end function
    function fun2(d1,d2)        
    integer :: fun2(2)
       integer,value :: d2(2)
       VALUE :: d1
       integer,intent(in) :: d1
     end function
    end interface
    integer :: arr=10
    if(gnr(arr,4).ne.14)print*,"101" 
    print*,"Pass"
   end
   
    elemental function fun(x,n)         
    integer :: fun
       integer,value :: n
       VALUE :: x
       integer,intent(in) :: x
       fun=x+n
     end function
    function fun2(d1,d2)         
    integer :: fun2(2)
       integer,value :: d2(2)
       VALUE :: d1
       integer,intent(in) :: d1
       fun2=d1+d2
     end function

