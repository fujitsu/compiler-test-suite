block
interface operator(.p.)
     function fun(a,b)
       integer,intent(in) :: a
       character,INTENT(IN) :: b
       integer :: fun
     end function
end interface operator(.p.)
print*,2.p.'h'

end block
end

     function fun(a,b)
       integer,intent(in) :: a
       character,INTENT(IN) :: b
       integer :: fun
       fun = len(b) + a
     END function
