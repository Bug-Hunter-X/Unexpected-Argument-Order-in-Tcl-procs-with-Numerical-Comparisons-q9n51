proc check_range {value min max} {
    if {$min > $max} {
        error "Incorrect range: min ($min) must be less than or equal to max ($max)"
    }
    if {$value < $min || $value > $max} {
        error "Value $value is out of range [ $min, $max ]"
    }
}

check_range 10 1 100 ;#Correct
check_range 10 100 1 ;#Error: Incorrect range: min (100) must be less than or equal to max (1)
check_range -10 1 100 ;#Error: Value -10 is out of range [ 1, 100 ]
