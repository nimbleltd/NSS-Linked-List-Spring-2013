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
    build_cmd = first_item
    n.times do
      unless build_cmd.nil?
        build_cmd = build_cmd.next_list_item
      else
        raise IndexError, "Index #{n} does not exist."
      end
    end
    build_cmd.payload
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
    return 0 if first_item.nil? # guard clause
    final_item = first_item
    while !final_item.nil?
      final_item = final_item.next_list_item
      i += 1
    end
    i
  end

  def to_s
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

# ========= indexOf Exercise ========== #
  def indexOf(payload_name)
    return nil if first_item.nil?
    final_item = first_item
    result_items = final_item.payload
    link_list_count = 0
    if payload_name == final_item.payload and link_list_count == 0
      return link_list_count
    end
    while payload_name != nil and payload_name != final_item.payload
      unless final_item.next_list_item == nil
        final_item = final_item.next_list_item
        link_list_count += 1
      else
        return nil
      end
    end
    # puts "\n at the end"
    link_list_count
  end

# ========= Sorting Exercise ========== #

  def sorted?
    if first_item.nil?
      return 1
    end
    if first_item == first_item.next_list_item
      return 1
    end
    # puts "\n 100 first_item.payload = #{first_item.payload} \nfirst_item.next_list_item.payload = #{first_item.next_list_item.payload} "
    if first_item.payload != first_item.next_list_item.payload
      # puts "\n first_item.payload = #{first_item.payload} \nfirst_item.next_list_item.payload = #{first_item.next_list_item.payload} "
      return 1
    else
      # puts "\n -1 yo"
      return -1
    end
    # if first_item.payload != first_item.next_list_item.payload
    #   if first_item.payload > first_item.next_list_item.payload
    #     return true
    #   else
    #     return false
    #   end
    # end
  end

  def sort
    #current_item = @first_item
    if first_item.nil?
      puts "\n in if"
      return self
    else
      puts "\n in 2nd if #{@first_item}"
      return @first_item.payload
    end


  end

  # This is a helper I implemented
  def swap_with_next i
    #if first_item >= first_item.next_list_item

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