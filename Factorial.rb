#METODO ITERATIVO 2

	# r = n * (n+1) 
	# r = r * (n+2)
	# r = r * (n+3)
	# r = r * (n+4)
def factorial_iterative(n)
	r = 1
	for i in (1...n)
	   r = r * (i+1)
		 # puts "r:#{r} = i:#{i} * (i+1):#{i+1}"
	end
	r
end

#METODO ITERATIVO 2
def factorial_iterative2(n)
	if n == 0
		1
	elsif n > 0
		(1..n).inject(&:*)
	end
	
	
end

#METODO RECURSIVO
def factorial_recursive(n)
	if n == 0
		1
	elsif n > 0
		factorial_recursive(n-1) * n
	end
end



p factorial_iterative(5) == 120
p factorial_iterative2(5) == 120
p factorial_recursive(5) == 120

p factorial_iterative(0) == 1
p factorial_iterative2(0) == 1
p factorial_recursive(0) == 1

p factorial_iterative(2) == 2
p factorial_iterative2(2) == 2
p factorial_recursive(2) == 2

p factorial_iterative(8) == 40_320
p factorial_iterative2(8) == 40_320
p factorial_recursive(8) == 40_320
