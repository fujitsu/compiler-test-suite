 call s1
 print *,'pass'
 end
     module m1
       interface x
        module procedure x1,x2
       end interface
       contains
       subroutine x1(i1,b)
       integer,optional::b
       write(1,*) i1,present(b)
       end subroutine
       subroutine x2(i1,i2,b)
       integer,optional::b
       write(1,*) i1,i2,present(b)
       end subroutine
    end
 subroutine s1
    use m1
    logical k
    call x(1,2,b=3)
    rewind 1
    read(1,*) i,j,k
    if (i/=1)print *,'fail'
    if (j/=2)print *,'fail'
    if (.not.k)print *,'fail'
    end
