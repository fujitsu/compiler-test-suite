          1        subroutine s1
          2        enum,bind(c)
          3          enumerator::red=4,blue=9
          4          enumerator  y
          5        end enum
!          6        if (kind(blue)/=8) print *,kind(blue)
          6        if (kind(blue)/=4) print *,kind(blue)
          7        end

call s1
print *,'pass'
end

