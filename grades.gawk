BEGIN { FS = ","; 
        print "Student Average Test Scores"; 
		printf("%-15s%-7s\n","Name", "Average");
		count = 0;
		avgSum = 0;
	}

NR!=1{avg = (($4 + $5 + $6)/3)}
{if ($3=="A")
printf("%-6s%-7s%7.2f\n",$2,$1,avg)}
{if ($3=="A")
avgSum += avg}
{if ($3=="A")
count++}
END { avgSum = avgSum / count;
	  printf("%d Students with an average score of %.1f", count, avgSum);
}
