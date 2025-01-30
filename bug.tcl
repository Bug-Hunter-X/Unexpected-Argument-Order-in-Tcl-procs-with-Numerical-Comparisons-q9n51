proc check_range {value min max} {
    if {$value < $min || $value > $max} {
        error "Value $value is out of range [ $min, $max ]"
    }
}

check_range 10 1 100 ;#Correct
check_range 10 100 1 ;#Error: Value 10 is out of range [ 100, 1 ]
check_range -10 1 100 ;#Error: Value -10 is out of range [ 1, 100 ]
