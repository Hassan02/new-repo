re=Regexp
#/(\d)([\sd]*)/.match "agshg 3 sa"
#re= /(\w*)\s(\w*),\s?([\w\s]*)/
re = /\d{1}/
#string = "My phone number is (123) 555-1234."  
#phone_re = /\((\d{2})\)\s(\d{3})-(\d{4})/ 

if 	re.match "1 5"
	
	print "sucess"
else
	print "failure"
end