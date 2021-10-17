
function Register-Data($prefix,$stringname) {
	$c = $stringname.length;
	if($c -eq 0){
		write-output $prefix}
	else{ 
		for($i=0;$i -lt $c;$i++){
			Register-Data ($prefix + $stringname[$i]) ($stringname.substring(0,$i) + $stringname.substring($i+1,$c - ($i+1)));          
 	        }
	}
}

#2
$output2 = for($h=0;$h -lt 6;$h++){
	for($j=($h+1);$j -lt 7;$j++){
		Register-Data "" ($A[$h] + $A[$j]);
	}
}
#3
$output3 = for($h=0;$h -lt 5;$h++){
	for($j=($h+1);$j -lt 6;$j++){
		for($k=($j+1);$k -lt 7;$k++){
			Register-Data "" ($A[$h] + $A[$j] + $A[$k])
		}
	}
}
#4
$output4 = for($h=0;$h -lt 5;$h++){
	for($j=($h+1);$j -lt 6;$j++){
		for($k=($j+1);$k -lt 7;$k++){
			$B = $A.remove($h,1).insert($h,"0");
			$B = $B.remove($j,1).insert($j,"0");
			$B = $B.remove($k,1).insert($k,"0");
			Register-Data "" ($B.replace("0",""))
		}
	}
}
#5
$output5 = for($h=0;$h -lt 6;$h++){
	for($j=($h+1);$j -lt 7;$j++){
		$B = $A.remove($h,1).insert($h,"0");
		$B = $B.remove($j,1).insert($j,"0");
		Register-Data "" ($B.replace("0",""))
	}
}

#6
$output6 = for($h=0;$h -lt 7;$h++){
	$B = $A.remove($h,1);
	Register-Data "" ($B)
}

#7
$output7 = Register-Data "" "adhiloy"



