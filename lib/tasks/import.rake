namespace :import do
    desc "data"
    task :authors => :environment do
        require 'csv'
        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/authors-190124.csv',headers: true) do |row|
            first_name = row[1]
            last_name=row[2]
            title= row[3]
            Author.create(first_name: first_name,last_name: last_name,title: title)
        end
    end
    desc "supp"
    task :suppliers=> :environment do
        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/suppliers-190124.csv',headers: true) do |row|
            puts"//////id,name////////"
            id=row[0]
            puts id
            name=row[1]
        
            Supplier.create(id: id,name:name)
        end
    end
    desc "ord"
    task :orders => :environment do
        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/orders-190124.csv',headers: true) do |row|
            puts"//////id,date_submitted,customer_id,status,subtotal,shipping,tax,total////////"
            id=row[0]
            puts id
            date_submitted = row[1]
            puts date_submitted
            customer_id=row[2]
            puts customer_id
            status =row[3].to_i
            puts status
            subtotal = row[4]
            puts subtotal
            shipping = row[5]
            puts shipping
            tax=row[6]
            puts tax
            total=row[7]
            puts total         
        
            b=Order.new(id: id,date_submitted: date_submitted,customer_id: customer_id,status: status,subtotal: subtotal,shipping: shipping,tax: tax,total: total)
            b.save(validate: false)
        end
    end
    desc "cus"
    task :customers => :environment do
        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/customers-190124.csv',headers: true) do |row|
            puts"//////id,first_name,last_name,title,email,visits,orders_count,lock_version////////"
            id=row[0]
            puts id
            first_name = row[1]
            last_name=row[2]
            title =row[3]
            puts title
            email = row[4]
            puts email
            visits = row[5].to_i
            puts visits
            orders_count=row[6].to_i
            puts orders_count
            lock_version=row[7].to_i
            puts lock_version          
        
            b=Customer.new(id: id,first_name: first_name,last_name: last_name,title: title,email: email,visits: visits,orders_count: orders_count,lock_version: lock_version)
            b.save(validate: false)
        end
    end
    desc "book"
    task :books => :environment do
        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/books-190124.csv',headers: true) do |row|
            puts"//////////////"
            id=row[0]
            puts id
            title =row[1]
            puts title
            year_published=row[2].to_i
            puts year_published
            isbn=row[3]
            puts isbn
            price=row[4].to_f
            puts price
            out_of_print=ActiveRecord::Type::Boolean.new.cast(row[5].to_i)
            puts out_of_print
            views=row[6].to_i
            puts views
            author_id=row[7].to_i
            puts author_id
            supplier_id=row[8].to_i
            puts supplier_id
        
            b=Book.new(title: title,year_published: year_published,isbn: isbn,price: price,out_of_print: out_of_print,views: views,author_id: author_id,supplier_id: supplier_id)
            b.save(validate: false)
        end
    end
    desc "bookorders"
    task :booksorders => :environment do
        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/books_orders-190124.csv',headers: true) do |row|
            puts"//////id,book_id,order_id////home/pavan/demo/db/seeders/csv_readers/csv_data/books_orders-190124.csv/////"
            id=row[0].to_i
            puts id.to_i.class
            book_id = row[1].to_i
            puts book_id.to_i.class
            order_id=row[2].to_i
            puts order_id.to_i.class
            
            
        
            #b=books_orders.new(id:id,book_id: book_id,order_id: order_id)
            #puts p #(validate: false)
        end
    end
    desc "review"
    task :reviews => :environment do
        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/reviews-190124.csv',headers: true) do |row|
            puts"//////id,title,body,rating,state,customer_id,book_id////////"
            id=row[0]
            puts id
            title =row[1]
            puts title
            body=row[2]
            puts body
            rating=row[3].to_i
            puts rating
            state=row[4].to_i
            puts state
            customer_id=row[5].to_i
            puts customer_id
            book_id=row[7].to_i
            puts book_id
            
        
            b=Review.new(id:id,title: title,body: body,rating: rating,state: state,customer_id: customer_id,book_id: book_id)
            b.save  #(validate: false)
        end
    end
    desc "revert"
    task :reverts => :environment do
        require_relative "20210526103555_create_authors"
        require_relative "20210526104533_create_customers"
        require_relative "20210526104727_create_orders"
        require_relative "20210526105141_create_reviews"
        require_relative "20210526105630_create_suppliers"
        require_relative "20210527130310_books_orders"
        revert BooksOrders
        revert CreateBooks
        revert CreateOrders
        
        revert CreateReviews
        revert CreateAuthors
        revert CreateCustomers
    end
    
        
=begin

        CSV.foreach('/home/pavan/demo/db/seeders/csv_readers/csv_data/authors-190124.csv',headers: true) do |row|
            first_name = row[1]
            last_name=row[2]
            title= row[3]
            Author.create(first_name: first_name,last_name: last_name,title: title)
        end
=end
    
end