print *, "pass"
selcons:do i = 1,2
      cycle selcons
    associate(a=>i)
    end associate
  end do selcons
end
