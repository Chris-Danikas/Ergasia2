program rainfall
    implicit none
    character(20) :: polh(5)
    integer :: vroxh(5)
    integer :: i
 
    open(1, file='data.txt', status='old')
 
    ! Διάβασμα της πρώτης γραμμής (τίτλων)
    read(1, *)
 
    ! Διάβασμα δεδομένων και αποθήκευση στους πίνακες
    do i = 1, 5
       read(1, *) polh(i), vroxh(i)
    end do
 
    close(1)
 
    ! Εκτύπωση περιεχομένων πινάκων
    do i = 1, 5
       print *, polh(i), vroxh(i)
    end do
 end program rainfall