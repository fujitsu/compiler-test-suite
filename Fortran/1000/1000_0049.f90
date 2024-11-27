  interface
    function xxx()
      integer :: xxx
    end
  end interface
  end

  function xxx()
  integer,pointer:: xxx
  allocate(xxx)
  end
