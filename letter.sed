#Change area code in heading to 800, remove parentheses, add dash
s/^\([0-9]{3}\) /800-/

#Remove parentheses from phone numbers, add dash
s/\(([0-9]{3})\) ([0-9]{3}-[0-9]{4})/\1-\2/g

#Change zip+4 code in heading to 1234
s/([0-9]{5}-)4321/\11234/

#Replace Lane w/ Ln in addresses
s/(^[0-9]+ [A-Za-z0-9 ]+)Lane/\1Ln/ g

#Lane to Kent
s/(Lois )Lane/\1Kent/

#Swap area code and exchange in phone number in body
s/(654)-(817)/\2-\1/

#Substitute # for @
s/@/#/g

#Substitute ; for ,
s/;/,/g

#Append ps to last line
$ap.s. your winnings must be claimed by February 29th.
