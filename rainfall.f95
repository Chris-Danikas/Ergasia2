program rainfall
    implicit none
    character(20) :: town(50)
    integer :: rain(50)
    integer :: i, N
 
    ! Κλήση της υπορουτίνας για δυναμικό διάβασμα
    call read_data(50, town, rain, N)
 
    ! Εκτύπωση περιεχομένων πινάκων
    do i = 1, N
       print *, town(i), rain(i)
    end do
 
 contains
 
    subroutine read_data(Nmax, T, R, N)
       implicit none
       integer, intent(in) :: Nmax
       character(20), dimension(Nmax), intent(out) :: T
       integer, dimension(Nmax), intent(out) :: R
       integer, intent(out) :: N
       integer :: i
 
       open(1, file='data.txt', status='old')
 
       ! Διάβασμα της πρώτης γραμμής (τίτλων)
       read(1, *)
 
       ! Διάβασμα δεδομένων και αποθήκευση στους πίνακες
       N = 0
       do i = 1, Nmax
          if (read(1, *, iostat=N) /= 0) then
             exit
          end if
          N = N + 1
          read(1, *) T(N), R(N)
       end do
 
       close(1)
    end subroutine read_data
 end program rainfall