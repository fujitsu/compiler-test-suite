subroutine s1
       integer ::a(3)=[1,2,3]
          call sub1(a(1:3:2))
          if (any(a/=[11,2,13])) print *,102,a
         contains
        subroutine sub1(dmy)
         integer :: dmy(:)
         if (any(dmy/=[1,3])) print *,201,dmy
         call sub2(dmy)
        end subroutine
        subroutine sub2(b)
         integer,contiguous :: b(:)
         if (any(b/=[1,3])) print *,101,b
          b=b+10
          end subroutine
        end
call s1
print *,'OK'
end
