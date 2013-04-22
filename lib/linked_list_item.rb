class LinkedListItem
  # def color
  # 	return @color <= is instance variable
  # end
  attr_reader :next_list_item
  attr_reader :payload

  # def payload
  # 	@payload
  # end

  # def payload=( arg )
  #   @payload = arg
  # end

  def initialize( payload )
  	@payload = payload
  end

  def next_list_item= (linked_list_item)
  	#help with ArgumentError http://stackoverflow.com/questions/2843255/how-to-test-that-invalid-arguments-raise-an-argumenterror-exception-using-rspec
  	if linked_list_item == self
    	raise(ArgumentError, "Can not link to self")
    else
  		#Go to the next item in the list
    	@next_list_item=linked_list_item #'splain this!!!!
    end
  end

  def last?
    #if next list item is nil return true
  	next_list_item.nil?  # same as above 'splain this!!!!
  end
end
