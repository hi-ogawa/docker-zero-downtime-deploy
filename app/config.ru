puts 'slow start: sleeping 10sec'
sleep 10

run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['Get Rack\'d']] }
