         module m0
         procedure(sub1),pointer::x
         procedure(sub2)::w
           interface g
             procedure::x,w
           end interface
           interface 
              subroutine sub1(c)
              character(*)::c
              end subroutine sub1
              subroutine sub2(c)
              complex     ::c
              end subroutine
           end interface
         contains
           subroutine set
            x=>sub1
           end subroutine
         end 
module u
interface
  subroutine r
    use m0
  end subroutine
 end interface
end
         use u
         use m0
call set
call g   ('1')
call g   ((1,2))
call r
        print *,'sngg879o : pass'
end

           subroutine sub1(c) 
              character(*)::c
if (len(c)/=1) print *,1001
if (c/='1') print *,1001
           end subroutine sub1
              subroutine w(c)
              complex     ::c
              if (c/=(1,2)) print *,900
              end subroutine 
  subroutine r
    use m0
  end subroutine
