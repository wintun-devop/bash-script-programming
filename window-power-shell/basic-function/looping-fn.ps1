function testArray {
    $array = ('item1','item2','item3') 
    foreach ($item in $array) { 
        Write-Output  "$item"
    }
}

testArray
