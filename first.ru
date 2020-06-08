require 'rack'

#Instances of Proc automatically have a call method that runs the block that
#THey're initialized with.
my_server = Proc.new do
    [200, { 'Content-Type' => 'text/html' },['<em>Hello</em>']] 
end

my_server1 = Proc.new do
    [200, { 'Content-Type' => 'text/html' },["<em>Got'em</em>"]] 
end

run my_server 

run my_server1