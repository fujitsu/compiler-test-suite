subroutine s
                 integer,pointer :: ptr2(:)
                 integer,target:: trg(5) = [1,2,3,5,4]
                 integer,pointer :: ptr(:)
                 ptr=>trg
                 ptr=>trg(1:5:2)
                 ptr2 => ptr(1:3)
                 if (is_contiguous(ptr(1:3))) print *,102
                 if (is_contiguous(ptr2)) print *,101
                end
call s
                 print*,"pass"
end
