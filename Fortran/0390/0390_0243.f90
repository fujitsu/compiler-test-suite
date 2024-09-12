subroutine s1
        logical(1)::l1(1)=.false.
        logical(2)::l2(1)=.false.
        logical(4)::l4(1)=.false.
        logical(8)::l8(1)=.false.
     integer a(10)
     a=0
        do  concurrent(k=1:10,l1(1))
          a(k)=1
        end do
 if (any(a/=0)) print *,101
     a=0
        do  concurrent(k=1:10,l2(1))
          a(k)=1
        end do
 if (any(a/=0)) print *,102
     a=0
        do  concurrent(k=1:10,l4(1))
          a(k)=1
        end do
 if (any(a/=0)) print *,103
     a=0
        do  concurrent(k=1:10,l8(1))
          a(k)=1
        end do
 if (any(a/=0)) print *,104
     a=0
        do  concurrent(k=1:10,k==0)
          a(k)=1
        end do
 if (any(a/=0)) print *,105
     a=0
end
call s1
call s2
        print *,'pass'
        end
subroutine s2
        logical(1)::l1(1)=.true.
        logical(2)::l2(1)=.true.
        logical(4)::l4(1)=.true.
        logical(8)::l8(1)=.true.
     integer a(10)
     a=0
        do  concurrent(k=1:10,l1(1))
          a(k)=1
        end do
 if (any(a/=1)) print *,101
     a=0
        do  concurrent(k=1:10,l2(1))
          a(k)=1
        end do
 if (any(a/=1)) print *,102
     a=0
        do  concurrent(k=1:10,l4(1))
          a(k)=1
        end do
 if (any(a/=1)) print *,103
     a=0
        do  concurrent(k=1:10,l8(1))
          a(k)=1
        end do
 if (any(a/=1)) print *,104
     a=0
        do  concurrent(k=1:10,k/=0)
          a(k)=1
        end do
 if (any(a/=1)) print *,105
     a=0
end
