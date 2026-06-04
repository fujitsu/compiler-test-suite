 call s1
 print *,'pass'
 end
     module m1
      interface x
       function   x1(i1,b) result(n)
       integer,optional::b
       end function  
       function   x2(i1,i2,b) result(n)
       integer,optional::b
       end function  
      end interface
    end
 subroutine s1
    use m1
    character*30 p
    k= x(1,2,b=3)
    if (k/=2)print *,'fail'
    rewind 1
    read(1,'(a)') p
    if (p/=' x2 : pass 1 2 T')print *,'fail'
    end
       function   x1(i1,b) result(n)
       integer,optional::b
       write(1,*)'x1 : pass',i1,present(b)
       n=1
       end function  
       function   x2(i1,i2,b) result(n)
       integer,optional::b
       write(1,*)'x2 : pass',i1,i2,present(b)
       n=2
       end function  
