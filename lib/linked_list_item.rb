class LinkedListItem

  attr_reader :next_list_item
  attr_reader :payload

  def initialize( payload )
    @payload = payload
  end

  def next_list_item= (linked_list_item)
    #help with ArgumentError http://stackoverflow.com/questions/2843255/how-to-test-that-invalid-arguments-raise-an-argumenterror-exception-using-rspec
    if linked_list_item == self
      raise(ArgumentError, "Can not link to self")
    else
      #Go to the next item in the list
      @next_list_item=linked_list_item
    end
  end

  def last?
    #if next list item is nil return true
    next_list_item.nil?
  end
end
