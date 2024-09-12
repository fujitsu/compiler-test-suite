  subroutine sub(s)
    implicit none
    interface
      subroutine s(kk)
      integer,intent(out)::kk
      end
    end interface
    integer::nnn
    call s(nnn)
    if (nnn/=1) print *,101
  end subroutine

    interface
      subroutine s(kk)
      integer,intent(out)::kk
      end
    end interface
call sub(s )
print *,'pass'
end

      subroutine s(kk)
      integer,intent(out)::kk
      kk=1
      end
