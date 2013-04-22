require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
  end

  def add_item(payload)
    next_item = LinkedListItem.new(payload)
    if first_item.nil?  
      @first_item = next_item
    else
      final_item = first_item
      while !final_item.last?
        final_item = final_item.next_list_item
      end
      final_item.next_list_item = next_item
    end
  end

  def get(n)
    i = 0
    buildCMD = first_item
    while i < n  #or n.times
      unless buildCMD.nil?
        buildCMD = buildCMD.next_list_item
      else
        raise IndexError, "Index #{n} DNE."  
      end
      i += 1
    end
    buildCMD.payload
  end

  def last
    return nil if first_item.nil?
    final_item = first_item
    while !final_item.last?
      final_item = final_item.next_list_item
    end    
    final_item.payload
  end

  def size
    i = 0
    if first_item.nil? # guard clause
      return 0
    end
    # return 0 if first_item.nil? 
    final_item = first_item
    while !final_item.nil?
      final_item = final_item.next_list_item
      i += 1
    end
    i 
  end

  def to_s
    #"| |"
    return "| |" if first_item.nil?
    final_item = first_item
    result_items = "| #{final_item.payload} |"
    while !final_item.last? # until item.last? 
      result_items.chop!.chop!
      final_item = final_item.next_list_item
      result_items = "#{result_items}, #{final_item.payload} |" #result_items += item.payload + ", "
    end
    result_items
  end

  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
    return 0 if first_item.nil? # guard clause
    final_item = first_item
    n -= 1
    n.times
      final_item = final_item.next_list_item
    final_item = final_item.nil
    i 
  end


end
 # def get(n) 
  #   if n == 0
  #     @first_item.payload
  #   elsif n == 1
  #     @first_item.next_list_item.payload
  #   elsif n ==2
  #     @first_item.next_list_item.next_list_item.payload
  #   elsif n ==3
  #     @first_item.next_list_item.next_list_item.next_list_item.payload
  #   end
  # end

  # if n == 0
  #   @first_item.payload
  # elsif n > 0
  #   n = 5    
  #   i= 1
  #   nli = "next_list_item."
  #   nliCount = "next_list_item."
  #   while i < n
  #     nliCount = nliCount + nli
  #     puts nliCount 
  #     i += 1
  #   end
  #   puts "@first_item.#{nliCount}payload"
  #   cmd = "@first_item.#{nliCount}payload"