interface
    subroutine xxx(i)
      class(*) ::i
    end subroutine
  end interface
  end

  subroutine xxx(a)
    type(*):: a
  end
