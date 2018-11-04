def activation_fn(x)
	if x>0
		return x
	end
return 0
end

print "Enter no. of neurons:"
n=gets.to_i

activations=Array.new(n)

puts "Enter initial values of activations:"

for i in 0..n-1
   activations[i]=gets.to_f
end

print "Enter inhibitory weight:"
k=gets.to_f

print "Initial values of activations:"
p activations

a_old=activations[0..activations.length]
a_new=Array.new(n)
count=0

while 1 do
	temp=a_old.sum
	for i in 0..n-1
		value=a_old[i]- k*temp + k*a_old[i]
		a_new[i]=activation_fn(value)
	end
	a_old=a_new[0..a_new.length]
	count+=1
	if a_new.sum ==a_new.max
		break
	end
	print "Iteration:%d"%[count]
	p a_old
	a_new=Array.new(n)
end

print "Iteration:%d"%[count]
p a_new


i=0
while a_new[i]==0 do
    i=i+1
end
puts "Winning neuron :%d "%[i+1]


