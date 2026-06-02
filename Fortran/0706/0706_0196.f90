      call s1
      print *,'pass'
      end
      subroutine s1
          character(2),parameter::a(2)=(/'12','34'/)
          integer v(2)/1,2/,n1/1/,n2/2/
          type x1
            character(2)::a(2)
          end type
          type (x1),parameter::xx=x1((/'12','34'/))
          type (x1),parameter::yy(2)=x1((/'12','34'/))
          call s(a(v)(n1:n2))
          call s(a(v)       )
          call s(a(:)(n1:n2))
          call s(a(:)       )
          call s(a          )
          call s((/'12','34'/))
          call s(xx%a(v)(n1:n2))
          call s(xx%a(v)       )
          call s(xx%a(:)(n1:n2))
          call s(xx%a(:)       )
          call s(xx%a          )
          call s(yy(2)%a(v)(n1:n2))
          call s(yy(2)%a(v)       )
          call s(yy(2)%a(:)(n1:n2))
          call s(yy(2)%a(:)       )
          call s(yy(2)%a          )
          call t(yy(v)%a(2)(n1:n2))
          call t(yy(v)%a(2)       )
          call t(yy(:)%a(2)(n1:n2))
          call t(yy(:)%a(2)    )
          call t(yy   %a(2)       )
          contains
          subroutine s(a)
          character(*) a(:)
          if (any(a/=(/'12','34'/)))print *,'fail'
          end subroutine
          subroutine t(a)
          character(*) a(:)
          if (any(a/='34'))print *,'fail'
          end subroutine
          end
