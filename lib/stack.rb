class Stack

    def initialize(limit = nil)
        @stack = []
        limit && @limit = limit
    end

    def push(value)
        if @stack.size == @limit
            raise Exception.new "Stack Overflow"
        else
        @stack.push(value)
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.size
    end

    def empty?
        @stack.empty?
    end

    def full?
        @stack.size == @limit
    end

    def search(val)
        index = @stack.find_index(val)
        index ? self.size - index - 1 : -1
    end


end