
         call sss(-1)
print *,'pass'
          contains
          subroutine sss(k)
          use, intrinsic :: ieee_arithmetic
          integer::k
if (1.eq.2) then
          print *,ieee_selected_real_kind(r=k)
endif
          if (ieee_selected_real_kind(r=k).ne.-2) print *,'err'
          end subroutine
          end

