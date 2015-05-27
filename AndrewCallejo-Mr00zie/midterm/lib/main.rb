require 'json'
require 'rest-client'

#require_relative 'lib/menu'
require_relative 'lib/story'
require_relative 'lib/mashable'
require_relative 'lib/reddit'
require_relative 'lib/digg'

# step 1, print the menu 

menu = Menu.new
menu.print


# puts "Welcome My News App"
# puts "Selcet 1 for Mashable"
# puts "Selcet 2 for Reddit"
# puts "Selcet 3 for Twitter"

# story1 = Story.new("Title 1","Author 1")
# puts story1.author 

stories = [] #array to store all the news 
# Story class will have title, autor

# step 2, new the class by the user input
while true  #my menu
	user_option = gets.chomp.to_i #check the exception
	if user_option == 1
		#do something
		puts "Great, Mashable slected."

		mashable_manager = Mashable.new 
		stories = mashable_manager.fetch_articles #return a Story Array


		# mashable_manager.search(keywords)
		# mashable_json = JSON.load(RestClient.get("http://www.mashable.com/stories.json"))
		# new_articles = mashable_json['new']
		# new_articles.each do |article|
		# 	story = Story.new(article['title'],article['author'])
		# 	stories.push(story)
		# end
		break;
	elsif user_option == 2
		#do something
		puts "Great, Reddit selected."

		reddit_manager = Reddit.new 
		stories = reddit_manager.fetch_articles #return a Story Array
		break;
	
	elsif user_option == 3
		#do something
		puts "Great, Digg selected."
		digg_manager = Digg.new 
		stories = digg_manager.fetch_articles #return a Story Array
		break;
	else
		puts "Please try again smarty pants!"
		menu.print
	end
end

# step 3, search the news by the user input, skip this step first 



# step 4, print the results 

stories.each do |story| 
	puts story.title
	puts story.author
end



