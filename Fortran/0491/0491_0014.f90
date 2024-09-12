  subroutine sub(k)
    implicit none
    interface
      integer pure function k(kk)
      integer,intent(in)::kk
      end
    end interface
    if (k(1)/=1) print *,101
  end subroutine

    interface
      integer pure function kf(kk)
      integer,intent(in)::kk
      end
    end interface
call sub(kf)
print *,'pass'
end

   integer pure function kf(kk)
   integer,intent(in)::kk
   kf=kk
  end
