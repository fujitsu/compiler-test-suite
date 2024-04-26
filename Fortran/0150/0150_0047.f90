subroutine foo
  block
    interface 
       subroutine sub2(i)
         integer :: i
       end subroutine sub2
    end interface
  end block
end subroutine foo
call foo
print *,'pass'
end
