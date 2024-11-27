type y(i)
      integer, kind :: i
      end type
      type x
        type(y(4)) z
        end type
        block
          type(x) w
          end block
end
