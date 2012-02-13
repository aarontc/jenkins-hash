def jenkins_hash(str)
  MAX_32_BIT = 4294967295
  hash = 0
  str.length.times { |n|
    hash += str[n].ord
    hash &= MAX_32_BIT
    hash += ((hash << 10) & MAX_32_BIT)
    hash &= MAX_32_BIT
    hash ^= hash >> 6
  }
  hash += (hash << 3 & MAX_32_BIT)
  hash &= MAX_32_BIT
  hash ^= hash >> 11
  hash += (hash << 15 & MAX_32_BIT)
  hash &= MAX_32_BIT
  hash
end
