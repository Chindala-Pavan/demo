namespace :demotask do
  desc "TODO"
  task task1: :environment do
    p = Person.create(name: "Pavan").valid?
    puts p
    puts Person.create(name: nil).valid?
    puts p.new_record?
    puts p.save
    puts p.new_record?
    p = Person.new
    puts p.errors.size
  end

end
