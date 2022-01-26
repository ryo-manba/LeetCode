# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    slower, faster = head, head

    while !slower.nil? && !faster.nil? && !faster.next.nil?
        slower = slower.next
        faster = faster.next.next

        return true if slower == faster
    end
    return false
end
