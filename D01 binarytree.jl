mutable struct BinaryNode{K, V}
    key::K
    data::V
    left::Union{BinaryNode, Nothing}
    right::Union{BinaryNode, Nothing}
end

function newBinaryNode(k, v)
    n = BinaryNode(k, v, nothing, nothing)
    return n
end

function firstOf(node::BinaryNode)
    if node.left == nothing
        return node
    else
        firstOf(node.left)
    end
end

function lastOf(node::BinaryNode)
    if node.right == nothing
        return node
    else
        lastOf(node.right)
    end
end

function insertTo(node::BinaryNode, target::BinaryNode)
    if node.key == target.key
        node.data = target.data
    elseif node.key > target.key
        if node.left == nothing
            node.left = target
        else
            insertTo(node.left, target)
        end
    elseif node.key < target.key
        if node.right == nothing
            node.right = target
        else
            insertTo(node.right, target)
        end
    end
end

function findFrom(node::BinaryNode, key)::Union{BinaryNode, Nothing}
    if typeof(node.key) != typeof(key)
        return nothing
    end
end

function removeFrom(node::BinaryNode, target::BinaryNode)

end
