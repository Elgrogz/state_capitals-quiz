# states= {
#   'Alabama' => 'Montgomery',
#   'Alaska' => 'Juno',
#   'Arizona' => 'Phoenix',
#   'Arkansas' => 'Little Rock',
#   'California' => 'Sacramento',
#   'Colorado' => 'Denver',
#   'Connecticut' => 'Hartford',
#   'Delaware' => 'Dover',
#   'Florida' => 'Tallahassee',
#   'Georgia' => 'Atlanta',
#   'Hawaii' => 'Honolulu',
#   'Idaho' => 'Boise',
#   'Illinois' => 'Springfield',
#   'Indiana' => 'Indianapolis',
#   'Iowa' => 'Des Moines',
#   'Kansas' => 'Topeka',
#   'Kentucky' => 'Frankfort',
#   'Louisiana' => 'Baton Rouge',
#   'Maine' => 'Augusta',
#   'Maryland' => 'Annapolis',
#   'Massachusetts' => 'Boston',
#   'Michigan' => 'Lansing',
#   'Minnesota' => 'St. Paul',
#   'Mississippi' => 'Jackson',
#   'Missouri' => 'Jefferson City',
#   'Montana' => 'Helena',
#   'Nebraska' => 'Lincoln',
#   'Nevada' => 'Carson City',
#   'New Hampshire' => 'Concord',
#   'New Jersey' => 'Trenton',
#   'New Mexico' => 'Santa Fe',
#   'New York' => 'Albany',
#   'North Carolina' => 'Raleigh',
#   'North Dakota' => 'Bismark',
#   'Ohio' => 'Columbus',
#   'Oklahoma' => 'Oklahoma City',
#   'Oregon' => 'Salem',
#   'Pennsylvania' => 'Harrisburg',
#   'Rhode Island' => 'Providence',
#   'South Carolina' => 'Columbia',
#   'South Dakota' => 'Pierre',
#   'Tennessee' => 'Nashville',
#   'Texas' => 'Austin',
#   'Utah' => 'Salt Lake City',
#   'Vermont' => 'Montpelier',
#   'Virginia' => 'Richmond',
#   'Washington' => 'Olympia',
#   'West Virginia' => 'Charleston',
#   'Wisconsin' => 'Madison',
#   'Wyoming' => 'Cheyenne'
# }


    @score_count = 0
    @winner = false
    @answered_questions = []


@states = [
  ['Alabama',  'Montgomery'],
  ['Alaska', 'Juno'],
  ['Arizona', 'Phoenix'],
  ['Arkansas', "Little Rock"],
  ['California', 'Sacramento'],
  ['Colorado', 'Denver'],
  ['Connecticut', 'Hartford'],
  ['Delaware', 'Dover'],
  ['Florida', 'Tallahassee'],
  ['Georgia', 'Atlanta'],
  ['Hawaii', 'Honolulu'],
  ['Idaho', 'Boise'],
  ['Illinois', 'Springfield'],
  ['Indiana', 'Indianapolis'],
  ['Iowa', "Des Moines"],
  ['Kansas', 'Topeka'],
  ['Kentucky', 'Frankfort'],
  ['Louisiana', "Baton Rouge"],
  ['Maine', 'Augusta'],
  ['Maryland', 'Annapolis'],
  ['Massachusetts', 'Boston'],
  ['Michigan', 'Lansing'],
  ['Minnesota', "St. Paul"],
  ['Mississippi', "Jackson"],
  ['Missouri', "Jefferson City"],
  ['Montana', 'Helena'],
  ['Nebraska', 'Lincoln'],
  ['Nevada', "Carson City"],
  ['New Hampshire', 'Concord'],
  ['New Jersey', 'Trenton'],
  ['New Mexico', "Santa Fe"],
  ['New York', 'Albany'],
  ['North Carolina', 'Raleigh'],
  ['North Dakota', 'Bismark'],
  ['Ohio', 'Columbus'],
  ['Oklahoma', 'Oklahoma City'],
  ['Oregon', 'Salem'],
  ['Pennsylvania', 'Harrisburg'],
  ['Rhode Island', 'Providence'],
  ['South Carolina', 'Columbia'],
  ['South Dakota', 'Pierre'],
  ['Tennessee', 'Nashville'],
  ['Texas', 'Austin'],
  ['Utah', 'Salt Lake City'],
  ['Vermont', 'Montpelier'],
  ['Virginia', 'Richmond'],
  ['Washington', 'Olympia'],
  ['West Virginia', 'Charleston'],
  ['Wisconsin', 'Madison'],
  ['Wyoming', 'Cheyenne']
]

def question_pair(array)
  @pair = array.sample
  @state = @pair[0]
  @capital = @pair[1].to_s 
end

def winner
  if @score_count == 10
    puts "You win!"
    @winner = true
  end
end

def ask_question
  puts "What is the capital of #{@state}?"
  answer = gets.chomp.capitalize
  if answer != "#{@capital}"
    puts "wrong"
  else
    puts "correct!"
    @score_count += 1
    expired_questions(@states)
    print @answered_questions
  end
  winner
end

def expired_questions(array)
  @answered_questions << @pair
  array.delete(@pair)
end

def winner
  if @score_count == 10
    puts "You win!"
    @winner = true
  end
end


while @winner == false
  question_pair(@states)
  ask_question
end
